.class public final synthetic Ljava/util/stream/-$$Lambda$Node$OfDouble$5XMtiGLC0wkQzF2OIEVEnEBoYWM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/DoubleConsumer;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/util/stream/-$$Lambda$Node$OfDouble$5XMtiGLC0wkQzF2OIEVEnEBoYWM;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/stream/-$$Lambda$Node$OfDouble$5XMtiGLC0wkQzF2OIEVEnEBoYWM;

    invoke-direct {v0}, Ljava/util/stream/-$$Lambda$Node$OfDouble$5XMtiGLC0wkQzF2OIEVEnEBoYWM;-><init>()V

    sput-object v0, Ljava/util/stream/-$$Lambda$Node$OfDouble$5XMtiGLC0wkQzF2OIEVEnEBoYWM;->INSTANCE:Ljava/util/stream/-$$Lambda$Node$OfDouble$5XMtiGLC0wkQzF2OIEVEnEBoYWM;

    return-void
.end method

.method private synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api accept(D)V
    .registers 3

    invoke-static {p1, p2}, Ljava/util/stream/Node$OfDouble;->lambda$truncate$0(D)V

    return-void
.end method
