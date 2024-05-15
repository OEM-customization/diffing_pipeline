.class public final synthetic Ljava/util/stream/ReferencePipeline$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/IntFunction;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/util/stream/ReferencePipeline$$ExternalSyntheticLambda1;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/stream/ReferencePipeline$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ljava/util/stream/ReferencePipeline$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Ljava/util/stream/ReferencePipeline$$ExternalSyntheticLambda1;->INSTANCE:Ljava/util/stream/ReferencePipeline$$ExternalSyntheticLambda1;

    return-void
.end method

.method private synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(I)Ljava/lang/Object;
    .registers 2

    invoke-static {p1}, Ljava/util/stream/ReferencePipeline;->lambda$toArray$0(I)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
