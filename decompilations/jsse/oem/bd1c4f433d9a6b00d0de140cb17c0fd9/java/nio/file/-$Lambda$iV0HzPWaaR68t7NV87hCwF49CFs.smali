.class final synthetic Ljava/nio/file/-$Lambda$iV0HzPWaaR68t7NV87hCwF49CFs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic $INST$0:Ljava/nio/file/-$Lambda$iV0HzPWaaR68t7NV87hCwF49CFs;

.field public static final synthetic $INST$1:Ljava/nio/file/-$Lambda$iV0HzPWaaR68t7NV87hCwF49CFs;


# instance fields
.field private final synthetic $id:B


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Ljava/nio/file/FileTreeWalker$Event;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {p1}, Ljava/nio/file/Files;->lambda$-java_nio_file_Files_166757(Ljava/nio/file/FileTreeWalker$Event;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method private final synthetic $m$1(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Ljava/nio/file/FileTreeWalker$Event;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {p1}, Ljava/nio/file/Files;->lambda$-java_nio_file_Files_161341(Ljava/nio/file/FileTreeWalker$Event;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/nio/file/-$Lambda$iV0HzPWaaR68t7NV87hCwF49CFs;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/nio/file/-$Lambda$iV0HzPWaaR68t7NV87hCwF49CFs;-><init>(B)V

    sput-object v0, Ljava/nio/file/-$Lambda$iV0HzPWaaR68t7NV87hCwF49CFs;->$INST$0:Ljava/nio/file/-$Lambda$iV0HzPWaaR68t7NV87hCwF49CFs;

    new-instance v0, Ljava/nio/file/-$Lambda$iV0HzPWaaR68t7NV87hCwF49CFs;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/nio/file/-$Lambda$iV0HzPWaaR68t7NV87hCwF49CFs;-><init>(B)V

    sput-object v0, Ljava/nio/file/-$Lambda$iV0HzPWaaR68t7NV87hCwF49CFs;->$INST$1:Ljava/nio/file/-$Lambda$iV0HzPWaaR68t7NV87hCwF49CFs;

    return-void
.end method

.method private synthetic constructor <init>(B)V
    .registers 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Ljava/nio/file/-$Lambda$iV0HzPWaaR68t7NV87hCwF49CFs;->$id:B

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    iget-byte v0, p0, Ljava/nio/file/-$Lambda$iV0HzPWaaR68t7NV87hCwF49CFs;->$id:B

    packed-switch v0, :pswitch_data_16

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0, p1}, Ljava/nio/file/-$Lambda$iV0HzPWaaR68t7NV87hCwF49CFs;->$m$0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_10
    invoke-direct {p0, p1}, Ljava/nio/file/-$Lambda$iV0HzPWaaR68t7NV87hCwF49CFs;->$m$1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_b
        :pswitch_10
    .end packed-switch
.end method
