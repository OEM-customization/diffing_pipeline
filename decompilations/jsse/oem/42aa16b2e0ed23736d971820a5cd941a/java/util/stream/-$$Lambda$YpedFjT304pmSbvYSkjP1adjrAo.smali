.class public final synthetic Ljava/util/stream/-$$Lambda$YpedFjT304pmSbvYSkjP1adjrAo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/util/stream/-$$Lambda$YpedFjT304pmSbvYSkjP1adjrAo;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/stream/-$$Lambda$YpedFjT304pmSbvYSkjP1adjrAo;

    invoke-direct {v0}, Ljava/util/stream/-$$Lambda$YpedFjT304pmSbvYSkjP1adjrAo;-><init>()V

    sput-object v0, Ljava/util/stream/-$$Lambda$YpedFjT304pmSbvYSkjP1adjrAo;->INSTANCE:Ljava/util/stream/-$$Lambda$YpedFjT304pmSbvYSkjP1adjrAo;

    return-void
.end method

.method private synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api get()Ljava/lang/Object;
    .registers 2

    new-instance v0, Ljava/util/stream/FindOps$FindSink$OfLong;

    invoke-direct {v0}, Ljava/util/stream/FindOps$FindSink$OfLong;-><init>()V

    check-cast v0, Ljava/util/stream/TerminalSink;

    return-object v0
.end method
