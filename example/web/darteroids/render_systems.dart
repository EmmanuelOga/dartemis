part of darteroids;

class CircleRenderingSystem extends EntityProcessingSystem {

  CanvasRenderingContext2D context;

  Mapper<Position> positionMapper;
  Mapper<CircularBody> bodyMapper;
  Mapper<Status> statusMapper;

  CircleRenderingSystem(this.context) : super(Aspect.getAspectForAllOf([Position, CircularBody]));

  void processEntity(Entity entity) {
    Position pos = positionMapper[entity];
    CircularBody body = bodyMapper[entity];
    Status status = statusMapper.getSafe(entity);

    context.save();

    try {
      context.lineWidth = 0.5;
      context.fillStyle = body.color;
      context.strokeStyle = body.color;
      if (null != status && status.invisible) {
        if (status.invisiblityTimer % 600 < 300) {
          context.globalAlpha = 0.4;
        }
      }

      drawCirle(pos, body);

      if (pos.x + body.radius > maxWidth) {
        drawCirle(pos, body, offsetX : -maxWidth);
      } else if (pos.x - body.radius < 0) {
        drawCirle(pos, body, offsetX : maxWidth);
      }
      if (pos.y + body.radius > maxHeight) {
        drawCirle(pos, body, offsetY : -maxHeight);
      } else if (pos.y - body.radius < 0) {
        drawCirle(pos, body, offsetY : maxHeight);
      }


      context.stroke();
    } finally {
      context.restore();
    }
  }

  void drawCirle(Position pos, CircularBody body, {int offsetX : 0, int offsetY : 0}) {
    context.beginPath();

    context.arc(pos.x + offsetX, pos.y + offsetY, body.radius, 0, PI * 2, false);

    context.closePath();
    context.fill();
  }
}

class BackgroundRenderSystem extends VoidEntitySystem {
  CanvasRenderingContext2D context;

  BackgroundRenderSystem(this.context);

  void processSystem() {
    context.save();
    try {
      context.fillStyle = "black";

      context.beginPath();
      context.rect(0, 0, maxWidth, maxHeight + hudHeight);
      context.closePath();

      context.fill();
    } finally {
      context.restore();
    }
  }
}

class HudRenderSystem extends VoidEntitySystem {
  CanvasRenderingContext2D context;
  TagManager tagManager;
  Mapper<Status> statusMapper;

  HudRenderSystem(this.context);

  void processSystem() {
    context.save();
    try {
      context.fillStyle = "#555";

      context.beginPath();
      context.rect(0, maxHeight, maxWidth, maxHeight + hudHeight);
      context.closePath();

      context.fill();

      Entity player = tagManager.getEntity(tagPlayer);
      Status status = statusMapper[player];

      context.fillStyle = playerColor;
      for (int i = 0; i < status.lifes; i++) {

        context.beginPath();
        context.arc(50 + i * 50, maxHeight + hudHeight~/2, 15, 0, PI * 2, false);
        context.closePath();

        context.fill();
      }

    } finally {
      context.restore();
    }
  }
}