.class final synthetic Ljava/util/stream/-$Lambda$QgGTJrv63_zzBbeGjswm_UMqEbo$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/IntToLongFunction;


# static fields
.field public static final synthetic $INST$0:Ljava/util/stream/-$Lambda$QgGTJrv63_zzBbeGjswm_UMqEbo$1;


# direct methods
.method private final synthetic $m$0(I)J
    .registers 4
    .param p1, "arg0"    # I

    .prologue
    invoke-static {p1}, Ljava/util/stream/IntPipeline;->lambda$-java_util_stream_IntPipeline_15352(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/stream/-$Lambda$QgGTJrv63_zzBbeGjswm_UMqEbo$1;

    invoke-direct {v0}, Ljava/util/stream/-$Lambda$QgGTJrv63_zzBbeGjswm_UMqEbo$1;-><init>()V

    sput-object v0, Ljava/util/stream/-$Lambda$QgGTJrv63_zzBbeGjswm_UMqEbo$1;->$INST$0:Ljava/util/stream/-$Lambda$QgGTJrv63_zzBbeGjswm_UMqEbo$1;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsLong(I)J
    .registers 4

    .prologue
    invoke-direct {p0, p1}, Ljava/util/stream/-$Lambda$QgGTJrv63_zzBbeGjswm_UMqEbo$1;->$m$0(I)J

    move-result-wide v0

    return-wide v0
.end method
