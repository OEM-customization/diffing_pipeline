.class public final synthetic Ljava/util/stream/-$$Lambda$ReferencePipeline$n3O_UMTjTSOeDSKD1yhh_2N2rRU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntFunction;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/util/stream/-$$Lambda$ReferencePipeline$n3O_UMTjTSOeDSKD1yhh_2N2rRU;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/stream/-$$Lambda$ReferencePipeline$n3O_UMTjTSOeDSKD1yhh_2N2rRU;

    invoke-direct {v0}, Ljava/util/stream/-$$Lambda$ReferencePipeline$n3O_UMTjTSOeDSKD1yhh_2N2rRU;-><init>()V

    sput-object v0, Ljava/util/stream/-$$Lambda$ReferencePipeline$n3O_UMTjTSOeDSKD1yhh_2N2rRU;->INSTANCE:Ljava/util/stream/-$$Lambda$ReferencePipeline$n3O_UMTjTSOeDSKD1yhh_2N2rRU;

    return-void
.end method

.method private synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api apply(I)Ljava/lang/Object;
    .registers 2

    invoke-static {p1}, Ljava/util/stream/ReferencePipeline;->lambda$toArray$0(I)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
