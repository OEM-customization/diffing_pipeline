.class final synthetic Ljava/util/stream/-$Lambda$QgGTJrv63_zzBbeGjswm_UMqEbo$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic $INST$0:Ljava/util/stream/-$Lambda$QgGTJrv63_zzBbeGjswm_UMqEbo$3;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)I
    .registers 3
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {p1}, Ljava/util/stream/IntPipeline;->lambda$-java_util_stream_IntPipeline_14709(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/stream/-$Lambda$QgGTJrv63_zzBbeGjswm_UMqEbo$3;

    invoke-direct {v0}, Ljava/util/stream/-$Lambda$QgGTJrv63_zzBbeGjswm_UMqEbo$3;-><init>()V

    sput-object v0, Ljava/util/stream/-$Lambda$QgGTJrv63_zzBbeGjswm_UMqEbo$3;->$INST$0:Ljava/util/stream/-$Lambda$QgGTJrv63_zzBbeGjswm_UMqEbo$3;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .registers 3

    .prologue
    invoke-direct {p0, p1}, Ljava/util/stream/-$Lambda$QgGTJrv63_zzBbeGjswm_UMqEbo$3;->$m$0(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
