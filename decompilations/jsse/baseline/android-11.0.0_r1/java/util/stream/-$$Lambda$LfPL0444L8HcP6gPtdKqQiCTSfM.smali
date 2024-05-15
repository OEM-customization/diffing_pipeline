.class public final synthetic Ljava/util/stream/-$$Lambda$LfPL0444L8HcP6gPtdKqQiCTSfM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/LongFunction;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/util/stream/-$$Lambda$LfPL0444L8HcP6gPtdKqQiCTSfM;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/stream/-$$Lambda$LfPL0444L8HcP6gPtdKqQiCTSfM;

    invoke-direct {v0}, Ljava/util/stream/-$$Lambda$LfPL0444L8HcP6gPtdKqQiCTSfM;-><init>()V

    sput-object v0, Ljava/util/stream/-$$Lambda$LfPL0444L8HcP6gPtdKqQiCTSfM;->INSTANCE:Ljava/util/stream/-$$Lambda$LfPL0444L8HcP6gPtdKqQiCTSfM;

    return-void
.end method

.method private synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api apply(J)Ljava/lang/Object;
    .registers 3

    invoke-static {p1, p2}, Ljava/util/stream/Nodes;->doubleBuilder(J)Ljava/util/stream/Node$Builder$OfDouble;

    move-result-object p1

    return-object p1
.end method
