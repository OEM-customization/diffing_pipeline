.class public final synthetic Ljava/util/stream/-$$Lambda$DoublePipeline$jsM76ecD5K_oP4TaArM1RdmdjOw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/util/stream/-$$Lambda$DoublePipeline$jsM76ecD5K_oP4TaArM1RdmdjOw;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/stream/-$$Lambda$DoublePipeline$jsM76ecD5K_oP4TaArM1RdmdjOw;

    invoke-direct {v0}, Ljava/util/stream/-$$Lambda$DoublePipeline$jsM76ecD5K_oP4TaArM1RdmdjOw;-><init>()V

    sput-object v0, Ljava/util/stream/-$$Lambda$DoublePipeline$jsM76ecD5K_oP4TaArM1RdmdjOw;->INSTANCE:Ljava/util/stream/-$$Lambda$DoublePipeline$jsM76ecD5K_oP4TaArM1RdmdjOw;

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

    invoke-static {}, Ljava/util/stream/DoublePipeline;->lambda$sum$1()[D

    move-result-object v0

    return-object v0
.end method
