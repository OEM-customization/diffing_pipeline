.class Ljava/net/SocketSecrets;
.super Ljava/lang/Object;
.source "SocketSecrets.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getOption(Ljava/lang/Object;Ljava/net/SocketOption;)Ljava/lang/Object;
    .registers 4
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/net/SocketOption",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    instance-of v1, p0, Ljava/net/Socket;

    if-eqz v1, :cond_f

    .line 53
    check-cast p0, Ljava/net/Socket;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    .line 59
    .local v0, "impl":Ljava/net/SocketImpl;
    :goto_a
    invoke-virtual {v0, p1}, Ljava/net/SocketImpl;->getOption(Ljava/net/SocketOption;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 54
    .end local v0    # "impl":Ljava/net/SocketImpl;
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_f
    instance-of v1, p0, Ljava/net/ServerSocket;

    if-eqz v1, :cond_1a

    .line 55
    check-cast p0, Ljava/net/ServerSocket;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/net/ServerSocket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    .restart local v0    # "impl":Ljava/net/SocketImpl;
    goto :goto_a

    .line 57
    .end local v0    # "impl":Ljava/net/SocketImpl;
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method private static getOption(Ljava/net/DatagramSocket;Ljava/net/SocketOption;)Ljava/lang/Object;
    .registers 3
    .param p0, "s"    # Ljava/net/DatagramSocket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/DatagramSocket;",
            "Ljava/net/SocketOption",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/DatagramSocketImpl;->getOption(Ljava/net/SocketOption;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static setOption(Ljava/lang/Object;Ljava/net/SocketOption;Ljava/lang/Object;)V
    .registers 5
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/net/SocketOption",
            "<TT;>;TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    instance-of v1, p0, Ljava/net/Socket;

    if-eqz v1, :cond_e

    .line 40
    check-cast p0, Ljava/net/Socket;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    .line 46
    .local v0, "impl":Ljava/net/SocketImpl;
    :goto_a
    invoke-virtual {v0, p1, p2}, Ljava/net/SocketImpl;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)V

    .line 47
    return-void

    .line 41
    .end local v0    # "impl":Ljava/net/SocketImpl;
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_e
    instance-of v1, p0, Ljava/net/ServerSocket;

    if-eqz v1, :cond_19

    .line 42
    check-cast p0, Ljava/net/ServerSocket;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/net/ServerSocket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    .restart local v0    # "impl":Ljava/net/SocketImpl;
    goto :goto_a

    .line 44
    .end local v0    # "impl":Ljava/net/SocketImpl;
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_19
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method private static setOption(Ljava/net/DatagramSocket;Ljava/net/SocketOption;Ljava/lang/Object;)V
    .registers 4
    .param p0, "s"    # Ljava/net/DatagramSocket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/DatagramSocket;",
            "Ljava/net/SocketOption",
            "<TT;>;TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/net/DatagramSocketImpl;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)V

    .line 64
    return-void
.end method
