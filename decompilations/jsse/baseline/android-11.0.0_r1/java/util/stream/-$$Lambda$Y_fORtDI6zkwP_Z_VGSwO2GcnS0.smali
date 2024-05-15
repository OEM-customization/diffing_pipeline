.class public final synthetic Ljava/util/stream/-$$Lambda$Y_fORtDI6zkwP_Z_VGSwO2GcnS0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ObjLongConsumer;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/util/stream/-$$Lambda$Y_fORtDI6zkwP_Z_VGSwO2GcnS0;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/stream/-$$Lambda$Y_fORtDI6zkwP_Z_VGSwO2GcnS0;

    invoke-direct {v0}, Ljava/util/stream/-$$Lambda$Y_fORtDI6zkwP_Z_VGSwO2GcnS0;-><init>()V

    sput-object v0, Ljava/util/stream/-$$Lambda$Y_fORtDI6zkwP_Z_VGSwO2GcnS0;->INSTANCE:Ljava/util/stream/-$$Lambda$Y_fORtDI6zkwP_Z_VGSwO2GcnS0;

    return-void
.end method

.method private synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api accept(Ljava/lang/Object;J)V
    .registers 4

    check-cast p1, Ljava/util/LongSummaryStatistics;

    invoke-virtual {p1, p2, p3}, Ljava/util/LongSummaryStatistics;->accept(J)V

    return-void
.end method
