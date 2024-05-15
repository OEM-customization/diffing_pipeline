.class public final synthetic Ljava/util/stream/DoublePipeline$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/util/stream/DoublePipeline$$ExternalSyntheticLambda13;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/stream/DoublePipeline$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Ljava/util/stream/DoublePipeline$$ExternalSyntheticLambda13;-><init>()V

    sput-object v0, Ljava/util/stream/DoublePipeline$$ExternalSyntheticLambda13;->INSTANCE:Ljava/util/stream/DoublePipeline$$ExternalSyntheticLambda13;

    return-void
.end method

.method private synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .registers 2

    invoke-static {}, Ljava/util/stream/DoublePipeline;->lambda$average$4()[D

    move-result-object v0

    return-object v0
.end method
