.class Lsun/net/ftp/impl/FtpClient$2;
.super Ljava/lang/Object;
.source "FtpClient.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/net/ftp/impl/FtpClient;->openPassiveDataConnection(Ljava/lang/String;)Ljava/net/Socket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/net/Socket;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lsun/net/ftp/impl/FtpClient;


# direct methods
.method constructor <init>(Lsun/net/ftp/impl/FtpClient;)V
    .registers 2
    .param p1, "this$0"    # Lsun/net/ftp/impl/FtpClient;

    .prologue
    .line 1
    iput-object p1, p0, Lsun/net/ftp/impl/FtpClient$2;->this$0:Lsun/net/ftp/impl/FtpClient;

    .line 646
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 648
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient$2;->run()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/net/Socket;
    .registers 3

    .prologue
    .line 649
    new-instance v0, Ljava/net/Socket;

    iget-object v1, p0, Lsun/net/ftp/impl/FtpClient$2;->this$0:Lsun/net/ftp/impl/FtpClient;

    invoke-static {v1}, Lsun/net/ftp/impl/FtpClient;->-get4(Lsun/net/ftp/impl/FtpClient;)Ljava/net/Proxy;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    return-object v0
.end method
