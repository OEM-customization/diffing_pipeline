.class Ljava/net/ServerSocket$1;
.super Ljava/lang/Object;
.source "ServerSocket.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/net/ServerSocket;->checkOldImpl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/net/ServerSocket;


# direct methods
.method constructor <init>(Ljava/net/ServerSocket;)V
    .registers 2
    .param p1, "this$0"    # Ljava/net/ServerSocket;

    .prologue
    .line 1
    iput-object p1, p0, Ljava/net/ServerSocket$1;->this$0:Ljava/net/ServerSocket;

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 270
    invoke-virtual {p0}, Ljava/net/ServerSocket$1;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 271
    iget-object v0, p0, Ljava/net/ServerSocket$1;->this$0:Ljava/net/ServerSocket;

    invoke-static {v0}, Ljava/net/ServerSocket;->-get0(Ljava/net/ServerSocket;)Ljava/net/SocketImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/SocketImpl;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "connect"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    .line 272
    const-class v3, Ljava/net/SocketAddress;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 273
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 271
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 274
    const/4 v0, 0x0

    return-object v0
.end method
