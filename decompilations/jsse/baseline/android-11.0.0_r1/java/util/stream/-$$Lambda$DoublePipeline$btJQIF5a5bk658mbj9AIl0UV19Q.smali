.class public final synthetic Ljava/util/stream/-$$Lambda$DoublePipeline$btJQIF5a5bk658mbj9AIl0UV19Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ObjDoubleConsumer;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/util/stream/-$$Lambda$DoublePipeline$btJQIF5a5bk658mbj9AIl0UV19Q;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/stream/-$$Lambda$DoublePipeline$btJQIF5a5bk658mbj9AIl0UV19Q;

    invoke-direct {v0}, Ljava/util/stream/-$$Lambda$DoublePipeline$btJQIF5a5bk658mbj9AIl0UV19Q;-><init>()V

    sput-object v0, Ljava/util/stream/-$$Lambda$DoublePipeline$btJQIF5a5bk658mbj9AIl0UV19Q;->INSTANCE:Ljava/util/stream/-$$Lambda$DoublePipeline$btJQIF5a5bk658mbj9AIl0UV19Q;

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

    check-cast p1, [D

    invoke-static {p1, p2, p3}, Ljava/util/stream/DoublePipeline;->lambda$sum$2([DD)V

    return-void
.end method
