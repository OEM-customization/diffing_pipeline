.class Ljava/net/SocksSocketImpl$2;
.super Ljava/lang/Object;
.source "SocksSocketImpl.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/net/SocksSocketImpl;->authenticate(BLjava/io/InputStream;Ljava/io/BufferedOutputStream;J)Z
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
        "Ljava/net/PasswordAuthentication;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/net/SocksSocketImpl;

.field final synthetic val$addr:Ljava/net/InetAddress;


# direct methods
.method constructor <init>(Ljava/net/SocksSocketImpl;Ljava/net/InetAddress;)V
    .registers 3
    .param p1, "this$0"    # Ljava/net/SocksSocketImpl;

    .prologue
    .line 1
    iput-object p1, p0, Ljava/net/SocksSocketImpl$2;->this$0:Ljava/net/SocksSocketImpl;

    iput-object p2, p0, Ljava/net/SocksSocketImpl$2;->val$addr:Ljava/net/InetAddress;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 161
    invoke-virtual {p0}, Ljava/net/SocksSocketImpl$2;->run()Ljava/net/PasswordAuthentication;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/net/PasswordAuthentication;
    .registers 7

    .prologue
    .line 163
    iget-object v0, p0, Ljava/net/SocksSocketImpl$2;->this$0:Ljava/net/SocksSocketImpl;

    invoke-static {v0}, Ljava/net/SocksSocketImpl;->-get0(Ljava/net/SocksSocketImpl;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljava/net/SocksSocketImpl$2;->val$addr:Ljava/net/InetAddress;

    iget-object v2, p0, Ljava/net/SocksSocketImpl$2;->this$0:Ljava/net/SocksSocketImpl;

    invoke-static {v2}, Ljava/net/SocksSocketImpl;->-get1(Ljava/net/SocksSocketImpl;)I

    move-result v2

    const-string/jumbo v3, "SOCKS5"

    const-string/jumbo v4, "SOCKS authentication"

    const/4 v5, 0x0

    .line 162
    invoke-static/range {v0 .. v5}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/PasswordAuthentication;

    move-result-object v0

    return-object v0
.end method
