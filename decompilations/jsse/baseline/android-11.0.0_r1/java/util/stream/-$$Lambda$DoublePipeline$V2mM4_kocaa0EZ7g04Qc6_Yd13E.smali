.class public final synthetic Ljava/util/stream/-$$Lambda$DoublePipeline$V2mM4_kocaa0EZ7g04Qc6_Yd13E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/DoubleToLongFunction;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/util/stream/-$$Lambda$DoublePipeline$V2mM4_kocaa0EZ7g04Qc6_Yd13E;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/stream/-$$Lambda$DoublePipeline$V2mM4_kocaa0EZ7g04Qc6_Yd13E;

    invoke-direct {v0}, Ljava/util/stream/-$$Lambda$DoublePipeline$V2mM4_kocaa0EZ7g04Qc6_Yd13E;-><init>()V

    sput-object v0, Ljava/util/stream/-$$Lambda$DoublePipeline$V2mM4_kocaa0EZ7g04Qc6_Yd13E;->INSTANCE:Ljava/util/stream/-$$Lambda$DoublePipeline$V2mM4_kocaa0EZ7g04Qc6_Yd13E;

    return-void
.end method

.method private synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api applyAsLong(D)J
    .registers 3

    invoke-static {p1, p2}, Ljava/util/stream/DoublePipeline;->lambda$count$7(D)J

    move-result-wide p1

    return-wide p1
.end method
