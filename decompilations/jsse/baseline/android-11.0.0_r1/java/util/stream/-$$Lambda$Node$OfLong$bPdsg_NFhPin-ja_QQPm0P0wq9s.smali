.class public final synthetic Ljava/util/stream/-$$Lambda$Node$OfLong$bPdsg_NFhPin-ja_QQPm0P0wq9s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/LongConsumer;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/util/stream/-$$Lambda$Node$OfLong$bPdsg_NFhPin-ja_QQPm0P0wq9s;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/stream/-$$Lambda$Node$OfLong$bPdsg_NFhPin-ja_QQPm0P0wq9s;

    invoke-direct {v0}, Ljava/util/stream/-$$Lambda$Node$OfLong$bPdsg_NFhPin-ja_QQPm0P0wq9s;-><init>()V

    sput-object v0, Ljava/util/stream/-$$Lambda$Node$OfLong$bPdsg_NFhPin-ja_QQPm0P0wq9s;->INSTANCE:Ljava/util/stream/-$$Lambda$Node$OfLong$bPdsg_NFhPin-ja_QQPm0P0wq9s;

    return-void
.end method

.method private synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api accept(J)V
    .registers 3

    invoke-static {p1, p2}, Ljava/util/stream/Node$OfLong;->lambda$truncate$0(J)V

    return-void
.end method
