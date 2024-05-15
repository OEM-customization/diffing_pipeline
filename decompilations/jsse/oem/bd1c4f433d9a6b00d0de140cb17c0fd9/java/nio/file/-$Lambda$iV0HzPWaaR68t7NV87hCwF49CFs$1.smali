.class final synthetic Ljava/nio/file/-$Lambda$iV0HzPWaaR68t7NV87hCwF49CFs$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .registers 2

    .prologue
    iget-object v0, p0, Ljava/nio/file/-$Lambda$iV0HzPWaaR68t7NV87hCwF49CFs$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/io/Closeable;

    invoke-static {v0}, Ljava/nio/file/Files;->lambda$-java_nio_file_Files_3831(Ljava/io/Closeable;)V

    return-void
.end method

.method private final synthetic $m$1()V
    .registers 2

    .prologue
    iget-object v0, p0, Ljava/nio/file/-$Lambda$iV0HzPWaaR68t7NV87hCwF49CFs$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/nio/file/FileTreeIterator;

    invoke-static {v0}, Ljava/nio/file/Files;->-java_nio_file_Files-mthref-1(Ljava/nio/file/FileTreeIterator;)V

    return-void
.end method

.method private final synthetic $m$2()V
    .registers 2

    .prologue
    iget-object v0, p0, Ljava/nio/file/-$Lambda$iV0HzPWaaR68t7NV87hCwF49CFs$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/nio/file/FileTreeIterator;

    invoke-static {v0}, Ljava/nio/file/Files;->-java_nio_file_Files-mthref-0(Ljava/nio/file/FileTreeIterator;)V

    return-void
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;)V
    .registers 3

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Ljava/nio/file/-$Lambda$iV0HzPWaaR68t7NV87hCwF49CFs$1;->$id:B

    iput-object p2, p0, Ljava/nio/file/-$Lambda$iV0HzPWaaR68t7NV87hCwF49CFs$1;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    iget-byte v0, p0, Ljava/nio/file/-$Lambda$iV0HzPWaaR68t7NV87hCwF49CFs$1;->$id:B

    packed-switch v0, :pswitch_data_18

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0}, Ljava/nio/file/-$Lambda$iV0HzPWaaR68t7NV87hCwF49CFs$1;->$m$0()V

    return-void

    :pswitch_f
    invoke-direct {p0}, Ljava/nio/file/-$Lambda$iV0HzPWaaR68t7NV87hCwF49CFs$1;->$m$1()V

    return-void

    :pswitch_13
    invoke-direct {p0}, Ljava/nio/file/-$Lambda$iV0HzPWaaR68t7NV87hCwF49CFs$1;->$m$2()V

    return-void

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_b
        :pswitch_f
        :pswitch_13
    .end packed-switch
.end method
