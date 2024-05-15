.class public final synthetic Ljava/util/stream/-$$Lambda$Node$OfInt$SR5qcq7S0oCtehCDXAgbRdnvBbw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntConsumer;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/util/stream/-$$Lambda$Node$OfInt$SR5qcq7S0oCtehCDXAgbRdnvBbw;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/stream/-$$Lambda$Node$OfInt$SR5qcq7S0oCtehCDXAgbRdnvBbw;

    invoke-direct {v0}, Ljava/util/stream/-$$Lambda$Node$OfInt$SR5qcq7S0oCtehCDXAgbRdnvBbw;-><init>()V

    sput-object v0, Ljava/util/stream/-$$Lambda$Node$OfInt$SR5qcq7S0oCtehCDXAgbRdnvBbw;->INSTANCE:Ljava/util/stream/-$$Lambda$Node$OfInt$SR5qcq7S0oCtehCDXAgbRdnvBbw;

    return-void
.end method

.method private synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api accept(I)V
    .registers 2

    invoke-static {p1}, Ljava/util/stream/Node$OfInt;->lambda$truncate$0(I)V

    return-void
.end method
