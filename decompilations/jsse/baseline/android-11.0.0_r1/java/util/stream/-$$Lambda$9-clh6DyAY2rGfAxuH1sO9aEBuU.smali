.class public final synthetic Ljava/util/stream/-$$Lambda$9-clh6DyAY2rGfAxuH1sO9aEBuU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ObjDoubleConsumer;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/util/stream/-$$Lambda$9-clh6DyAY2rGfAxuH1sO9aEBuU;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/stream/-$$Lambda$9-clh6DyAY2rGfAxuH1sO9aEBuU;

    invoke-direct {v0}, Ljava/util/stream/-$$Lambda$9-clh6DyAY2rGfAxuH1sO9aEBuU;-><init>()V

    sput-object v0, Ljava/util/stream/-$$Lambda$9-clh6DyAY2rGfAxuH1sO9aEBuU;->INSTANCE:Ljava/util/stream/-$$Lambda$9-clh6DyAY2rGfAxuH1sO9aEBuU;

    return-void
.end method

.method private synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api accept(Ljava/lang/Object;D)V
    .registers 4

    check-cast p1, Ljava/util/DoubleSummaryStatistics;

    invoke-virtual {p1, p2, p3}, Ljava/util/DoubleSummaryStatistics;->accept(D)V

    return-void
.end method
