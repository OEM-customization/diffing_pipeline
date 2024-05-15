.class public final synthetic Ljava/util/stream/-$$Lambda$ihOtgw0eLCrsEBOphyN7SwoAlDg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/util/stream/-$$Lambda$ihOtgw0eLCrsEBOphyN7SwoAlDg;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/stream/-$$Lambda$ihOtgw0eLCrsEBOphyN7SwoAlDg;

    invoke-direct {v0}, Ljava/util/stream/-$$Lambda$ihOtgw0eLCrsEBOphyN7SwoAlDg;-><init>()V

    sput-object v0, Ljava/util/stream/-$$Lambda$ihOtgw0eLCrsEBOphyN7SwoAlDg;->INSTANCE:Ljava/util/stream/-$$Lambda$ihOtgw0eLCrsEBOphyN7SwoAlDg;

    return-void
.end method

.method private synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
