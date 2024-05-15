.class Lsun/nio/ch/DatagramChannelImpl;
.super Ljava/nio/channels/DatagramChannel;
.source "DatagramChannelImpl.java"

# interfaces
.implements Lsun/nio/ch/SelChImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/ch/DatagramChannelImpl$DefaultOptionsHolder;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final ST_CONNECTED:I = 0x1

.field private static final ST_KILLED:I = 0x2

.field private static final ST_UNCONNECTED:I = 0x0

.field private static final ST_UNINITIALIZED:I = -0x1

.field private static nd:Lsun/nio/ch/NativeDispatcher;


# instance fields
.field private cachedSenderInetAddress:Ljava/net/InetAddress;

.field private cachedSenderPort:I

.field private final family:Ljava/net/ProtocolFamily;

.field final fd:Ljava/io/FileDescriptor;

.field private final fdVal:I

.field private final guard:Ldalvik/system/CloseGuard;

.field private isReuseAddress:Z

.field private localAddress:Ljava/net/InetSocketAddress;

.field private final readLock:Ljava/lang/Object;

.field private volatile readerThread:J

.field private registry:Lsun/nio/ch/MembershipRegistry;

.field private remoteAddress:Ljava/net/InetSocketAddress;

.field private reuseAddressEmulated:Z

.field private sender:Ljava/net/SocketAddress;

.field private socket:Ljava/net/DatagramSocket;

.field private state:I

.field private final stateLock:Ljava/lang/Object;

.field private final writeLock:Ljava/lang/Object;

.field private volatile writerThread:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const-class v0, Lsun/nio/ch/DatagramChannelImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    .line 71
    new-instance v0, Lsun/nio/ch/DatagramDispatcher;

    invoke-direct {v0}, Lsun/nio/ch/DatagramDispatcher;-><init>()V

    sput-object v0, Lsun/nio/ch/DatagramChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    .line 1207
    invoke-static {}, Lsun/nio/ch/DatagramChannelImpl;->initIDs()V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/spi/SelectorProvider;)V
    .registers 6
    .param p1, "sp"    # Ljava/nio/channels/spi/SelectorProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 136
    invoke-direct {p0, p1}, Ljava/nio/channels/DatagramChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 85
    iput-wide v2, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    .line 86
    iput-wide v2, p0, Lsun/nio/ch/DatagramChannelImpl;->writerThread:J

    .line 94
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->readLock:Ljava/lang/Object;

    .line 97
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->writeLock:Ljava/lang/Object;

    .line 101
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    .line 110
    const/4 v1, -0x1

    iput v1, p0, Lsun/nio/ch/DatagramChannelImpl;->state:I

    .line 131
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v1

    iput-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->guard:Ldalvik/system/CloseGuard;

    .line 137
    invoke-static {}, Lsun/net/ResourceManager;->beforeUdpCreate()V

    .line 139
    :try_start_2a
    invoke-static {}, Lsun/nio/ch/Net;->isIPv6Available()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 140
    sget-object v1, Ljava/net/StandardProtocolFamily;->INET6:Ljava/net/StandardProtocolFamily;

    .line 139
    :goto_32
    iput-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    .line 141
    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lsun/nio/ch/Net;->socket(Ljava/net/ProtocolFamily;Z)Ljava/io/FileDescriptor;

    move-result-object v1

    iput-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    .line 142
    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v1}, Lsun/nio/ch/IOUtil;->fdVal(Ljava/io/FileDescriptor;)I

    move-result v1

    iput v1, p0, Lsun/nio/ch/DatagramChannelImpl;->fdVal:I

    .line 143
    const/4 v1, 0x0

    iput v1, p0, Lsun/nio/ch/DatagramChannelImpl;->state:I

    .line 146
    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    if-eqz v1, :cond_5c

    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 147
    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->guard:Ldalvik/system/CloseGuard;

    const-string/jumbo v2, "close"

    invoke-virtual {v1, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 153
    :cond_5c
    return-void

    .line 140
    :cond_5d
    sget-object v1, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_5f} :catch_60

    goto :goto_32

    .line 149
    :catch_60
    move-exception v0

    .line 150
    .local v0, "ioe":Ljava/io/IOException;
    invoke-static {}, Lsun/net/ResourceManager;->afterUdpClose()V

    .line 151
    throw v0
.end method

.method public constructor <init>(Ljava/nio/channels/spi/SelectorProvider;Ljava/io/FileDescriptor;)V
    .registers 5
    .param p1, "sp"    # Ljava/nio/channels/spi/SelectorProvider;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, 0x0

    .line 186
    invoke-direct {p0, p1}, Ljava/nio/channels/DatagramChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 85
    iput-wide v0, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    .line 86
    iput-wide v0, p0, Lsun/nio/ch/DatagramChannelImpl;->writerThread:J

    .line 94
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->readLock:Ljava/lang/Object;

    .line 97
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->writeLock:Ljava/lang/Object;

    .line 101
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    .line 110
    const/4 v0, -0x1

    iput v0, p0, Lsun/nio/ch/DatagramChannelImpl;->state:I

    .line 131
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->guard:Ldalvik/system/CloseGuard;

    .line 187
    invoke-static {}, Lsun/nio/ch/Net;->isIPv6Available()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 188
    sget-object v0, Ljava/net/StandardProtocolFamily;->INET6:Ljava/net/StandardProtocolFamily;

    .line 187
    :goto_2f
    iput-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    .line 189
    iput-object p2, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    .line 190
    invoke-static {p2}, Lsun/nio/ch/IOUtil;->fdVal(Ljava/io/FileDescriptor;)I

    move-result v0

    iput v0, p0, Lsun/nio/ch/DatagramChannelImpl;->fdVal:I

    .line 191
    const/4 v0, 0x0

    iput v0, p0, Lsun/nio/ch/DatagramChannelImpl;->state:I

    .line 192
    invoke-static {p2}, Lsun/nio/ch/Net;->localAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    .line 194
    if-eqz p2, :cond_52

    invoke-virtual {p2}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 195
    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->guard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 197
    :cond_52
    return-void

    .line 188
    :cond_53
    sget-object v0, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    goto :goto_2f
.end method

.method public constructor <init>(Ljava/nio/channels/spi/SelectorProvider;Ljava/net/ProtocolFamily;)V
    .registers 7
    .param p1, "sp"    # Ljava/nio/channels/spi/SelectorProvider;
    .param p2, "family"    # Ljava/net/ProtocolFamily;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 158
    invoke-direct {p0, p1}, Ljava/nio/channels/DatagramChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 85
    iput-wide v2, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    .line 86
    iput-wide v2, p0, Lsun/nio/ch/DatagramChannelImpl;->writerThread:J

    .line 94
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->readLock:Ljava/lang/Object;

    .line 97
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->writeLock:Ljava/lang/Object;

    .line 101
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    .line 110
    const/4 v0, -0x1

    iput v0, p0, Lsun/nio/ch/DatagramChannelImpl;->state:I

    .line 131
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->guard:Ldalvik/system/CloseGuard;

    .line 159
    sget-object v0, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    if-eq p2, v0, :cond_44

    .line 160
    sget-object v0, Ljava/net/StandardProtocolFamily;->INET6:Ljava/net/StandardProtocolFamily;

    if-eq p2, v0, :cond_44

    .line 162
    if-nez p2, :cond_3b

    .line 163
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "\'family\' is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_3b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Protocol family not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_44
    sget-object v0, Ljava/net/StandardProtocolFamily;->INET6:Ljava/net/StandardProtocolFamily;

    if-ne p2, v0, :cond_57

    .line 168
    invoke-static {}, Lsun/nio/ch/Net;->isIPv6Available()Z

    move-result v0

    if-nez v0, :cond_57

    .line 169
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "IPv6 not available"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_57
    iput-object p2, p0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    .line 173
    invoke-static {p2, v1}, Lsun/nio/ch/Net;->socket(Ljava/net/ProtocolFamily;Z)Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    .line 174
    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Lsun/nio/ch/IOUtil;->fdVal(Ljava/io/FileDescriptor;)I

    move-result v0

    iput v0, p0, Lsun/nio/ch/DatagramChannelImpl;->fdVal:I

    .line 175
    iput v1, p0, Lsun/nio/ch/DatagramChannelImpl;->state:I

    .line 178
    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_7d

    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 179
    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->guard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 181
    :cond_7d
    return-void
.end method

.method private static native disconnect0(Ljava/io/FileDescriptor;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private ensureOpen()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/ClosedChannelException;
        }
    .end annotation

    .prologue
    .line 359
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_c

    .line 360
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0

    .line 361
    :cond_c
    return-void
.end method

.method private static native initIDs()V
.end method

.method private innerJoin(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;)Ljava/nio/channels/MembershipKey;
    .registers 28
    .param p1, "group"    # Ljava/net/InetAddress;
    .param p2, "interf"    # Ljava/net/NetworkInterface;
    .param p3, "source"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 850
    invoke-virtual/range {p1 .. p1}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v4

    if-nez v4, :cond_f

    .line 851
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Group not a multicast address"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 854
    :cond_f
    move-object/from16 v0, p1

    instance-of v4, v0, Ljava/net/Inet4Address;

    if-eqz v4, :cond_2e

    .line 855
    move-object/from16 v0, p0

    iget-object v4, v0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    sget-object v5, Ljava/net/StandardProtocolFamily;->INET6:Ljava/net/StandardProtocolFamily;

    if-ne v4, v5, :cond_4e

    invoke-static {}, Lsun/nio/ch/Net;->canIPv6SocketJoinIPv4Group()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4e

    .line 856
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "IPv6 socket cannot join IPv4 multicast group"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 857
    :cond_2e
    move-object/from16 v0, p1

    instance-of v4, v0, Ljava/net/Inet6Address;

    if-eqz v4, :cond_45

    .line 858
    move-object/from16 v0, p0

    iget-object v4, v0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    sget-object v5, Ljava/net/StandardProtocolFamily;->INET6:Ljava/net/StandardProtocolFamily;

    if-eq v4, v5, :cond_4e

    .line 859
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Only IPv6 sockets can join IPv6 multicast group"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 861
    :cond_45
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Address type not supported"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 865
    :cond_4e
    if-eqz p3, :cond_81

    .line 866
    invoke-virtual/range {p3 .. p3}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 867
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Source address is a wildcard address"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 868
    :cond_5f
    invoke-virtual/range {p3 .. p3}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v4

    if-eqz v4, :cond_6e

    .line 869
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Source address is multicast address"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 870
    :cond_6e
    invoke-virtual/range {p3 .. p3}, Ljava/net/InetAddress;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Ljava/net/InetAddress;->getClass()Ljava/lang/Class;

    move-result-object v5

    if-eq v4, v5, :cond_81

    .line 871
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Source address is different type to group"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 874
    :cond_81
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v21

    .line 875
    .local v21, "sm":Ljava/lang/SecurityManager;
    if-eqz v21, :cond_8e

    .line 876
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkMulticast(Ljava/net/InetAddress;)V

    .line 878
    :cond_8e
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    move-object/from16 v23, v0

    monitor-enter v23

    .line 879
    :try_start_95
    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z

    move-result v4

    if-nez v4, :cond_a4

    .line 880
    new-instance v4, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v4}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v4
    :try_end_a1
    .catchall {:try_start_95 .. :try_end_a1} :catchall_a1

    .line 878
    :catchall_a1
    move-exception v4

    monitor-exit v23

    throw v4

    .line 883
    :cond_a4
    :try_start_a4
    move-object/from16 v0, p0

    iget-object v4, v0, Lsun/nio/ch/DatagramChannelImpl;->registry:Lsun/nio/ch/MembershipRegistry;

    if-nez v4, :cond_d7

    .line 884
    new-instance v4, Lsun/nio/ch/MembershipRegistry;

    invoke-direct {v4}, Lsun/nio/ch/MembershipRegistry;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lsun/nio/ch/DatagramChannelImpl;->registry:Lsun/nio/ch/MembershipRegistry;

    .line 893
    :cond_b3
    move-object/from16 v0, p0

    iget-object v4, v0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    sget-object v5, Ljava/net/StandardProtocolFamily;->INET6:Ljava/net/StandardProtocolFamily;

    if-ne v4, v5, :cond_11e

    .line 894
    move-object/from16 v0, p1

    instance-of v4, v0, Ljava/net/Inet6Address;

    if-nez v4, :cond_c7

    invoke-static {}, Lsun/nio/ch/Net;->canJoin6WithIPv4Group()Z

    move-result v4

    .line 893
    if-eqz v4, :cond_11e

    .line 896
    :cond_c7
    invoke-virtual/range {p2 .. p2}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v9

    .line 897
    .local v9, "index":I
    const/4 v4, -0x1

    if-ne v9, v4, :cond_e9

    .line 898
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "Network interface cannot be identified"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 887
    .end local v9    # "index":I
    :cond_d7
    move-object/from16 v0, p0

    iget-object v4, v0, Lsun/nio/ch/DatagramChannelImpl;->registry:Lsun/nio/ch/MembershipRegistry;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2}, Lsun/nio/ch/MembershipRegistry;->checkMembership(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;)Ljava/nio/channels/MembershipKey;
    :try_end_e4
    .catchall {:try_start_a4 .. :try_end_e4} :catchall_a1

    move-result-object v19

    .line 888
    .local v19, "key":Ljava/nio/channels/MembershipKey;
    if-eqz v19, :cond_b3

    monitor-exit v23

    .line 889
    return-object v19

    .line 901
    .end local v19    # "key":Ljava/nio/channels/MembershipKey;
    .restart local v9    # "index":I
    :cond_e9
    :try_start_e9
    invoke-static/range {p1 .. p1}, Lsun/nio/ch/Net;->inet6AsByteArray(Ljava/net/InetAddress;)[B

    move-result-object v8

    .line 902
    .local v8, "groupAddress":[B
    if-nez p3, :cond_103

    const/4 v10, 0x0

    .line 906
    :goto_f0
    move-object/from16 v0, p0

    iget-object v4, v0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v4, v8, v9, v10}, Lsun/nio/ch/Net;->join6(Ljava/io/FileDescriptor;[BI[B)I

    move-result v20

    .line 907
    .local v20, "n":I
    const/4 v4, -0x2

    move/from16 v0, v20

    if-ne v0, v4, :cond_108

    .line 908
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v4}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v4

    .line 903
    .end local v20    # "n":I
    :cond_103
    invoke-static/range {p3 .. p3}, Lsun/nio/ch/Net;->inet6AsByteArray(Ljava/net/InetAddress;)[B

    move-result-object v10

    .local v10, "sourceAddress":[B
    goto :goto_f0

    .line 910
    .end local v10    # "sourceAddress":[B
    .restart local v20    # "n":I
    :cond_108
    new-instance v3, Lsun/nio/ch/MembershipKeyImpl$Type6;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-direct/range {v3 .. v10}, Lsun/nio/ch/MembershipKeyImpl$Type6;-><init>(Ljava/nio/channels/MulticastChannel;Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;[BI[B)V

    .line 932
    .end local v8    # "groupAddress":[B
    .end local v9    # "index":I
    .local v3, "key":Lsun/nio/ch/MembershipKeyImpl;
    :goto_115
    move-object/from16 v0, p0

    iget-object v4, v0, Lsun/nio/ch/DatagramChannelImpl;->registry:Lsun/nio/ch/MembershipRegistry;

    invoke-virtual {v4, v3}, Lsun/nio/ch/MembershipRegistry;->add(Lsun/nio/ch/MembershipKeyImpl;)V
    :try_end_11c
    .catchall {:try_start_e9 .. :try_end_11c} :catchall_a1

    monitor-exit v23

    .line 933
    return-object v3

    .line 915
    .end local v3    # "key":Lsun/nio/ch/MembershipKeyImpl;
    .end local v20    # "n":I
    :cond_11e
    :try_start_11e
    invoke-static/range {p2 .. p2}, Lsun/nio/ch/Net;->anyInet4Address(Ljava/net/NetworkInterface;)Ljava/net/Inet4Address;

    move-result-object v22

    .line 916
    .local v22, "target":Ljava/net/Inet4Address;
    if-nez v22, :cond_12d

    .line 917
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "Network interface not configured for IPv4"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 919
    :cond_12d
    invoke-static/range {p1 .. p1}, Lsun/nio/ch/Net;->inet4AsInt(Ljava/net/InetAddress;)I

    move-result v16

    .line 920
    .local v16, "groupAddress":I
    invoke-static/range {v22 .. v22}, Lsun/nio/ch/Net;->inet4AsInt(Ljava/net/InetAddress;)I

    move-result v17

    .line 921
    .local v17, "targetAddress":I
    if-nez p3, :cond_152

    const/16 v18, 0x0

    .line 924
    .local v18, "sourceAddress":I
    :goto_139
    move-object/from16 v0, p0

    iget-object v4, v0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    move/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v4, v0, v1, v2}, Lsun/nio/ch/Net;->join4(Ljava/io/FileDescriptor;III)I

    move-result v20

    .line 925
    .restart local v20    # "n":I
    const/4 v4, -0x2

    move/from16 v0, v20

    if-ne v0, v4, :cond_157

    .line 926
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v4}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v4

    .line 921
    .end local v18    # "sourceAddress":I
    .end local v20    # "n":I
    :cond_152
    invoke-static/range {p3 .. p3}, Lsun/nio/ch/Net;->inet4AsInt(Ljava/net/InetAddress;)I

    move-result v18

    .restart local v18    # "sourceAddress":I
    goto :goto_139

    .line 928
    .restart local v20    # "n":I
    :cond_157
    new-instance v3, Lsun/nio/ch/MembershipKeyImpl$Type4;

    move-object v11, v3

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    invoke-direct/range {v11 .. v18}, Lsun/nio/ch/MembershipKeyImpl$Type4;-><init>(Ljava/nio/channels/MulticastChannel;Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;III)V
    :try_end_165
    .catchall {:try_start_11e .. :try_end_165} :catchall_a1

    .restart local v3    # "key":Lsun/nio/ch/MembershipKeyImpl;
    goto :goto_115
.end method

.method private receive(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I
    .registers 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 431
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .line 432
    .local v4, "pos":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 433
    .local v1, "lim":I
    sget-boolean v6, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    if-nez v6, :cond_14

    if-le v4, v1, :cond_14

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 434
    :cond_14
    if-gt v4, v1, :cond_23

    sub-int v5, v1, v4

    .line 435
    .local v5, "rem":I
    :goto_18
    instance-of v6, p2, Lsun/nio/ch/DirectBuffer;

    if-eqz v6, :cond_25

    if-lez v5, :cond_25

    .line 436
    invoke-direct {p0, p1, p2, v5, v4}, Lsun/nio/ch/DatagramChannelImpl;->receiveIntoNativeBuffer(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;II)I

    move-result v6

    return v6

    .line 434
    .end local v5    # "rem":I
    :cond_23
    const/4 v5, 0x0

    .restart local v5    # "rem":I
    goto :goto_18

    .line 441
    :cond_25
    const/4 v6, 0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 442
    .local v3, "newSize":I
    invoke-static {v3}, Lsun/nio/ch/Util;->getTemporaryDirectBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 444
    .local v0, "bb":Ljava/nio/ByteBuffer;
    :try_start_2e
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v6

    invoke-interface {v6}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    .line 446
    const/4 v6, 0x0

    invoke-direct {p0, p1, v0, v3, v6}, Lsun/nio/ch/DatagramChannelImpl;->receiveIntoNativeBuffer(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;II)I

    move-result v2

    .line 447
    .local v2, "n":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 448
    if-lez v2, :cond_44

    if-lez v5, :cond_44

    .line 449
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_44
    .catchall {:try_start_2e .. :try_end_44} :catchall_48

    .line 452
    :cond_44
    invoke-static {v0}, Lsun/nio/ch/Util;->releaseTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 450
    return v2

    .line 451
    .end local v2    # "n":I
    :catchall_48
    move-exception v6

    .line 452
    invoke-static {v0}, Lsun/nio/ch/Util;->releaseTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 451
    throw v6
.end method

.method private native receive0(Ljava/io/FileDescriptor;JIZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private receiveIntoNativeBuffer(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;II)I
    .registers 12
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "bb"    # Ljava/nio/ByteBuffer;
    .param p3, "rem"    # I
    .param p4, "pos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    move-object v0, p2

    .line 460
    check-cast v0, Lsun/nio/ch/DirectBuffer;

    invoke-interface {v0}, Lsun/nio/ch/DirectBuffer;->address()J

    move-result-wide v0

    int-to-long v2, p4

    add-long/2addr v2, v0

    .line 461
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isConnected()Z

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    .line 460
    invoke-direct/range {v0 .. v5}, Lsun/nio/ch/DatagramChannelImpl;->receive0(Ljava/io/FileDescriptor;JIZ)I

    move-result v6

    .line 462
    .local v6, "n":I
    if-lez v6, :cond_1b

    .line 463
    add-int v0, p4, v6

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 464
    :cond_1b
    return v6
.end method

.method private send(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;Ljava/net/InetSocketAddress;)I
    .registers 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "src"    # Ljava/nio/ByteBuffer;
    .param p3, "target"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 530
    instance-of v5, p2, Lsun/nio/ch/DirectBuffer;

    if-eqz v5, :cond_9

    .line 531
    invoke-direct {p0, p1, p2, p3}, Lsun/nio/ch/DatagramChannelImpl;->sendFromNativeBuffer(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;Ljava/net/InetSocketAddress;)I

    move-result v5

    return v5

    .line 534
    :cond_9
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 535
    .local v3, "pos":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 536
    .local v1, "lim":I
    sget-boolean v5, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    if-nez v5, :cond_1d

    if-le v3, v1, :cond_1d

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 537
    :cond_1d
    if-gt v3, v1, :cond_3d

    sub-int v4, v1, v3

    .line 539
    .local v4, "rem":I
    :goto_21
    invoke-static {v4}, Lsun/nio/ch/Util;->getTemporaryDirectBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 541
    .local v0, "bb":Ljava/nio/ByteBuffer;
    :try_start_25
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 542
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 544
    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 546
    invoke-direct {p0, p1, v0, p3}, Lsun/nio/ch/DatagramChannelImpl;->sendFromNativeBuffer(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;Ljava/net/InetSocketAddress;)I

    move-result v2

    .line 547
    .local v2, "n":I
    if-lez v2, :cond_39

    .line 549
    add-int v5, v3, v2

    invoke-virtual {p2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_39
    .catchall {:try_start_25 .. :try_end_39} :catchall_3f

    .line 553
    :cond_39
    invoke-static {v0}, Lsun/nio/ch/Util;->releaseTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 551
    return v2

    .line 537
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    .end local v2    # "n":I
    .end local v4    # "rem":I
    :cond_3d
    const/4 v4, 0x0

    .restart local v4    # "rem":I
    goto :goto_21

    .line 552
    .restart local v0    # "bb":Ljava/nio/ByteBuffer;
    :catchall_3f
    move-exception v5

    .line 553
    invoke-static {v0}, Lsun/nio/ch/Util;->releaseTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 552
    throw v5
.end method

.method private native send0(ZLjava/io/FileDescriptor;JILjava/net/InetAddress;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private sendFromNativeBuffer(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;Ljava/net/InetSocketAddress;)I
    .registers 20
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "bb"    # Ljava/nio/ByteBuffer;
    .param p3, "target"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 561
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v11

    .line 562
    .local v11, "pos":I
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    .line 563
    .local v2, "lim":I
    sget-boolean v3, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    if-nez v3, :cond_14

    if-le v11, v2, :cond_14

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 564
    :cond_14
    if-gt v11, v2, :cond_46

    sub-int v8, v2, v11

    .line 566
    .local v8, "rem":I
    :goto_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    sget-object v5, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    if-eq v3, v5, :cond_48

    const/4 v4, 0x1

    .line 569
    .local v4, "preferIPv6":Z
    :goto_21
    :try_start_21
    move-object/from16 v0, p2

    check-cast v0, Lsun/nio/ch/DirectBuffer;

    move-object v3, v0

    invoke-interface {v3}, Lsun/nio/ch/DirectBuffer;->address()J

    move-result-wide v6

    int-to-long v14, v11

    add-long/2addr v6, v14

    .line 570
    invoke-virtual/range {p3 .. p3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual/range {p3 .. p3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v10

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    .line 569
    invoke-direct/range {v3 .. v10}, Lsun/nio/ch/DatagramChannelImpl;->send0(ZLjava/io/FileDescriptor;JILjava/net/InetAddress;I)I
    :try_end_3b
    .catch Ljava/net/PortUnreachableException; {:try_start_21 .. :try_end_3b} :catch_4a

    move-result v13

    .line 576
    .local v13, "written":I
    :goto_3c
    if-lez v13, :cond_45

    .line 577
    add-int v3, v11, v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 578
    :cond_45
    return v13

    .line 564
    .end local v4    # "preferIPv6":Z
    .end local v8    # "rem":I
    .end local v13    # "written":I
    :cond_46
    const/4 v8, 0x0

    .restart local v8    # "rem":I
    goto :goto_18

    .line 566
    :cond_48
    const/4 v4, 0x0

    .restart local v4    # "preferIPv6":Z
    goto :goto_21

    .line 571
    :catch_4a
    move-exception v12

    .line 572
    .local v12, "pue":Ljava/net/PortUnreachableException;
    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/DatagramChannelImpl;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_52

    .line 573
    throw v12

    .line 574
    :cond_52
    move v13, v8

    .restart local v13    # "written":I
    goto :goto_3c
.end method


# virtual methods
.method public bind(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;
    .registers 12
    .param p1, "local"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 711
    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->readLock:Ljava/lang/Object;

    monitor-enter v4

    .line 712
    :try_start_3
    iget-object v5, p0, Lsun/nio/ch/DatagramChannelImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_1c

    .line 713
    :try_start_6
    iget-object v6, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_19

    .line 714
    :try_start_9
    invoke-direct {p0}, Lsun/nio/ch/DatagramChannelImpl;->ensureOpen()V

    .line 715
    iget-object v3, p0, Lsun/nio/ch/DatagramChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    if-eqz v3, :cond_1f

    .line 716
    new-instance v3, Ljava/nio/channels/AlreadyBoundException;

    invoke-direct {v3}, Ljava/nio/channels/AlreadyBoundException;-><init>()V

    throw v3
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_16

    .line 713
    :catchall_16
    move-exception v3

    :try_start_17
    monitor-exit v6

    throw v3
    :try_end_19
    .catchall {:try_start_17 .. :try_end_19} :catchall_19

    .line 712
    :catchall_19
    move-exception v3

    :try_start_1a
    monitor-exit v5

    throw v3
    :try_end_1c
    .catchall {:try_start_1a .. :try_end_1c} :catchall_1c

    .line 711
    :catchall_1c
    move-exception v3

    monitor-exit v4

    throw v3

    .line 718
    :cond_1f
    if-nez p1, :cond_63

    .line 720
    :try_start_21
    iget-object v3, p0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    sget-object v7, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    if-ne v3, v7, :cond_5c

    .line 721
    new-instance v1, Ljava/net/InetSocketAddress;

    const-string/jumbo v3, "0.0.0.0"

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    const/4 v7, 0x0

    invoke-direct {v1, v3, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 735
    .local v1, "isa":Ljava/net/InetSocketAddress;
    :cond_34
    :goto_34
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .line 736
    .local v2, "sm":Ljava/lang/SecurityManager;
    if-eqz v2, :cond_41

    .line 737
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/SecurityManager;->checkListen(I)V

    .line 739
    :cond_41
    iget-object v3, p0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    iget-object v7, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v9

    invoke-static {v3, v7, v8, v9}, Lsun/nio/ch/Net;->bind(Ljava/net/ProtocolFamily;Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 740
    iget-object v3, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v3}, Lsun/nio/ch/Net;->localAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    move-result-object v3

    iput-object v3, p0, Lsun/nio/ch/DatagramChannelImpl;->localAddress:Ljava/net/InetSocketAddress;
    :try_end_58
    .catchall {:try_start_21 .. :try_end_58} :catchall_16

    :try_start_58
    monitor-exit v6
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_19

    :try_start_59
    monitor-exit v5
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_1c

    monitor-exit v4

    .line 744
    return-object p0

    .line 723
    .end local v1    # "isa":Ljava/net/InetSocketAddress;
    .end local v2    # "sm":Ljava/lang/SecurityManager;
    :cond_5c
    :try_start_5c
    new-instance v1, Ljava/net/InetSocketAddress;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Ljava/net/InetSocketAddress;-><init>(I)V

    .restart local v1    # "isa":Ljava/net/InetSocketAddress;
    goto :goto_34

    .line 726
    .end local v1    # "isa":Ljava/net/InetSocketAddress;
    :cond_63
    invoke-static {p1}, Lsun/nio/ch/Net;->checkAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;

    move-result-object v1

    .line 729
    .restart local v1    # "isa":Ljava/net/InetSocketAddress;
    iget-object v3, p0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    sget-object v7, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    if-ne v3, v7, :cond_34

    .line 730
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 731
    .local v0, "addr":Ljava/net/InetAddress;
    instance-of v3, v0, Ljava/net/Inet4Address;

    if-nez v3, :cond_34

    .line 732
    new-instance v3, Ljava/nio/channels/UnsupportedAddressTypeException;

    invoke-direct {v3}, Ljava/nio/channels/UnsupportedAddressTypeException;-><init>()V

    throw v3
    :try_end_7b
    .catchall {:try_start_5c .. :try_end_7b} :catchall_16
.end method

.method public bridge synthetic bind(Ljava/net/SocketAddress;)Ljava/nio/channels/NetworkChannel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 709
    invoke-virtual {p0, p1}, Lsun/nio/ch/DatagramChannelImpl;->bind(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    return-object v0
.end method

.method block(Lsun/nio/ch/MembershipKeyImpl;Ljava/net/InetAddress;)V
    .registers 12
    .param p1, "key"    # Lsun/nio/ch/MembershipKeyImpl;
    .param p2, "source"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 991
    sget-boolean v4, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    if-nez v4, :cond_10

    invoke-virtual {p1}, Lsun/nio/ch/MembershipKeyImpl;->channel()Ljava/nio/channels/MulticastChannel;

    move-result-object v4

    if-eq v4, p0, :cond_10

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 992
    :cond_10
    sget-boolean v4, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    if-nez v4, :cond_20

    invoke-virtual {p1}, Lsun/nio/ch/MembershipKeyImpl;->sourceAddress()Ljava/net/InetAddress;

    move-result-object v4

    if-eqz v4, :cond_20

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 994
    :cond_20
    iget-object v5, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v5

    .line 995
    :try_start_23
    invoke-virtual {p1}, Lsun/nio/ch/MembershipKeyImpl;->isValid()Z

    move-result v4

    if-nez v4, :cond_35

    .line 996
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "key is no longer valid"

    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_32
    .catchall {:try_start_23 .. :try_end_32} :catchall_32

    .line 994
    :catchall_32
    move-exception v4

    monitor-exit v5

    throw v4

    .line 997
    :cond_35
    :try_start_35
    invoke-virtual {p2}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v4

    if-eqz v4, :cond_44

    .line 998
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Source address is a wildcard address"

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 999
    :cond_44
    invoke-virtual {p2}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v4

    if-eqz v4, :cond_53

    .line 1000
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Source address is multicast address"

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1001
    :cond_53
    invoke-virtual {p2}, Ljava/net/InetAddress;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1}, Lsun/nio/ch/MembershipKeyImpl;->group()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getClass()Ljava/lang/Class;

    move-result-object v6

    if-eq v4, v6, :cond_6a

    .line 1002
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Source address is different type to group"

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1005
    :cond_6a
    instance-of v4, p1, Lsun/nio/ch/MembershipKeyImpl$Type6;

    if-eqz v4, :cond_8d

    .line 1007
    move-object v0, p1

    check-cast v0, Lsun/nio/ch/MembershipKeyImpl$Type6;

    move-object v2, v0

    .line 1008
    .local v2, "key6":Lsun/nio/ch/MembershipKeyImpl$Type6;
    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v2}, Lsun/nio/ch/MembershipKeyImpl$Type6;->groupAddress()[B

    move-result-object v6

    invoke-virtual {v2}, Lsun/nio/ch/MembershipKeyImpl$Type6;->index()I

    move-result v7

    .line 1009
    invoke-static {p2}, Lsun/nio/ch/Net;->inet6AsByteArray(Ljava/net/InetAddress;)[B

    move-result-object v8

    .line 1008
    invoke-static {v4, v6, v7, v8}, Lsun/nio/ch/Net;->block6(Ljava/io/FileDescriptor;[BI[B)I

    move-result v3

    .line 1016
    .end local v2    # "key6":Lsun/nio/ch/MembershipKeyImpl$Type6;
    .local v3, "n":I
    :goto_84
    const/4 v4, -0x2

    if-ne v3, v4, :cond_a4

    .line 1018
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v4}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v4

    .line 1012
    .end local v3    # "n":I
    :cond_8d
    move-object v0, p1

    check-cast v0, Lsun/nio/ch/MembershipKeyImpl$Type4;

    move-object v1, v0

    .line 1013
    .local v1, "key4":Lsun/nio/ch/MembershipKeyImpl$Type4;
    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v1}, Lsun/nio/ch/MembershipKeyImpl$Type4;->groupAddress()I

    move-result v6

    invoke-virtual {v1}, Lsun/nio/ch/MembershipKeyImpl$Type4;->interfaceAddress()I

    move-result v7

    .line 1014
    invoke-static {p2}, Lsun/nio/ch/Net;->inet4AsInt(Ljava/net/InetAddress;)I

    move-result v8

    .line 1013
    invoke-static {v4, v6, v7, v8}, Lsun/nio/ch/Net;->block4(Ljava/io/FileDescriptor;III)I
    :try_end_a2
    .catchall {:try_start_35 .. :try_end_a2} :catchall_32

    move-result v3

    .restart local v3    # "n":I
    goto :goto_84

    .end local v1    # "key4":Lsun/nio/ch/MembershipKeyImpl$Type4;
    :cond_a4
    monitor-exit v5

    .line 1021
    return-void
.end method

.method public connect(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;
    .registers 15
    .param p1, "sa"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 764
    const/4 v2, 0x0

    .line 766
    .local v2, "localPort":I
    iget-object v7, p0, Lsun/nio/ch/DatagramChannelImpl;->readLock:Ljava/lang/Object;

    monitor-enter v7

    .line 767
    :try_start_4
    iget-object v8, p0, Lsun/nio/ch/DatagramChannelImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_44

    .line 768
    :try_start_7
    iget-object v9, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_41

    .line 769
    :try_start_a
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->ensureOpenAndUnconnected()V

    .line 770
    invoke-static {p1}, Lsun/nio/ch/Net;->checkAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;

    move-result-object v1

    .line 771
    .local v1, "isa":Ljava/net/InetSocketAddress;
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v4

    .line 772
    .local v4, "sm":Ljava/lang/SecurityManager;
    if-eqz v4, :cond_26

    .line 773
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    .line 774
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v10

    .line 773
    invoke-virtual {v4, v6, v10}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    .line 775
    :cond_26
    iget-object v6, p0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    .line 776
    iget-object v10, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    .line 777
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v11

    .line 778
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v12

    .line 775
    invoke-static {v6, v10, v11, v12}, Lsun/nio/ch/Net;->connect(Ljava/net/ProtocolFamily;Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)I

    move-result v3

    .line 779
    .local v3, "n":I
    if-gtz v3, :cond_47

    .line 780
    new-instance v6, Ljava/lang/Error;

    invoke-direct {v6}, Ljava/lang/Error;-><init>()V

    throw v6
    :try_end_3e
    .catchall {:try_start_a .. :try_end_3e} :catchall_3e

    .line 768
    .end local v1    # "isa":Ljava/net/InetSocketAddress;
    .end local v3    # "n":I
    .end local v4    # "sm":Ljava/lang/SecurityManager;
    :catchall_3e
    move-exception v6

    :try_start_3f
    monitor-exit v9

    throw v6
    :try_end_41
    .catchall {:try_start_3f .. :try_end_41} :catchall_41

    .line 767
    :catchall_41
    move-exception v6

    :try_start_42
    monitor-exit v8

    throw v6
    :try_end_44
    .catchall {:try_start_42 .. :try_end_44} :catchall_44

    .line 766
    :catchall_44
    move-exception v6

    monitor-exit v7

    throw v6

    .line 783
    .restart local v1    # "isa":Ljava/net/InetSocketAddress;
    .restart local v3    # "n":I
    .restart local v4    # "sm":Ljava/lang/SecurityManager;
    :cond_47
    const/4 v6, 0x1

    :try_start_48
    iput v6, p0, Lsun/nio/ch/DatagramChannelImpl;->state:I

    .line 784
    iput-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    .line 785
    iput-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->sender:Ljava/net/SocketAddress;

    .line 786
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    iput-object v6, p0, Lsun/nio/ch/DatagramChannelImpl;->cachedSenderInetAddress:Ljava/net/InetAddress;

    .line 787
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v6

    iput v6, p0, Lsun/nio/ch/DatagramChannelImpl;->cachedSenderPort:I

    .line 790
    iget-object v6, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v6}, Lsun/nio/ch/Net;->localAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    move-result-object v6

    iput-object v6, p0, Lsun/nio/ch/DatagramChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    .line 793
    const/4 v0, 0x0

    .line 794
    .local v0, "blocking":Z
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->blockingLock()Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10
    :try_end_68
    .catchall {:try_start_48 .. :try_end_68} :catchall_3e

    .line 796
    :try_start_68
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isBlocking()Z

    move-result v0

    .line 798
    .local v0, "blocking":Z
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 799
    .local v5, "tmpBuf":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_77

    .line 800
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lsun/nio/ch/DatagramChannelImpl;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 803
    :cond_77
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 804
    invoke-virtual {p0, v5}, Lsun/nio/ch/DatagramChannelImpl;->receive(Ljava/nio/ByteBuffer;)Ljava/net/SocketAddress;
    :try_end_7d
    .catchall {:try_start_68 .. :try_end_7d} :catchall_8b

    move-result-object v6

    if-nez v6, :cond_77

    .line 806
    if-eqz v0, :cond_86

    .line 807
    const/4 v6, 0x1

    :try_start_83
    invoke-virtual {p0, v6}, Lsun/nio/ch/DatagramChannelImpl;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;
    :try_end_86
    .catchall {:try_start_83 .. :try_end_86} :catchall_93

    :cond_86
    :try_start_86
    monitor-exit v10
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_3e

    :try_start_87
    monitor-exit v9
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_41

    :try_start_88
    monitor-exit v8
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_44

    monitor-exit v7

    .line 814
    return-object p0

    .line 805
    .end local v0    # "blocking":Z
    .end local v5    # "tmpBuf":Ljava/nio/ByteBuffer;
    :catchall_8b
    move-exception v6

    .line 806
    if-eqz v0, :cond_92

    .line 807
    const/4 v11, 0x1

    :try_start_8f
    invoke-virtual {p0, v11}, Lsun/nio/ch/DatagramChannelImpl;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 805
    :cond_92
    throw v6
    :try_end_93
    .catchall {:try_start_8f .. :try_end_93} :catchall_93

    .line 794
    :catchall_93
    move-exception v6

    :try_start_94
    monitor-exit v10

    throw v6
    :try_end_96
    .catchall {:try_start_94 .. :try_end_96} :catchall_3e
.end method

.method public disconnect()Ljava/nio/channels/DatagramChannel;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 818
    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->readLock:Ljava/lang/Object;

    monitor-enter v4

    .line 819
    :try_start_3
    iget-object v5, p0, Lsun/nio/ch/DatagramChannelImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_58

    .line 820
    :try_start_6
    iget-object v6, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_55

    .line 821
    :try_start_9
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_52

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1b

    :cond_17
    :try_start_17
    monitor-exit v6
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_55

    :try_start_18
    monitor-exit v5
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_58

    monitor-exit v4

    .line 822
    return-object p0

    .line 823
    :cond_1b
    :try_start_1b
    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    .line 824
    .local v1, "isa":Ljava/net/InetSocketAddress;
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .line 825
    .local v2, "sm":Ljava/lang/SecurityManager;
    if-eqz v2, :cond_32

    .line 826
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    .line 827
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v7

    .line 826
    invoke-virtual {v2, v3, v7}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    .line 828
    :cond_32
    iget-object v3, p0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    sget-object v7, Ljava/net/StandardProtocolFamily;->INET6:Ljava/net/StandardProtocolFamily;

    if-ne v3, v7, :cond_50

    const/4 v0, 0x1

    .line 829
    .local v0, "isIPv6":Z
    :goto_39
    iget-object v3, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v3, v0}, Lsun/nio/ch/DatagramChannelImpl;->disconnect0(Ljava/io/FileDescriptor;Z)V

    .line 830
    const/4 v3, 0x0

    iput-object v3, p0, Lsun/nio/ch/DatagramChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    .line 831
    const/4 v3, 0x0

    iput v3, p0, Lsun/nio/ch/DatagramChannelImpl;->state:I

    .line 834
    iget-object v3, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v3}, Lsun/nio/ch/Net;->localAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    move-result-object v3

    iput-object v3, p0, Lsun/nio/ch/DatagramChannelImpl;->localAddress:Ljava/net/InetSocketAddress;
    :try_end_4c
    .catchall {:try_start_1b .. :try_end_4c} :catchall_52

    :try_start_4c
    monitor-exit v6
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_55

    :try_start_4d
    monitor-exit v5
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_58

    monitor-exit v4

    .line 838
    return-object p0

    .line 828
    .end local v0    # "isIPv6":Z
    :cond_50
    const/4 v0, 0x0

    .restart local v0    # "isIPv6":Z
    goto :goto_39

    .line 820
    .end local v0    # "isIPv6":Z
    .end local v1    # "isa":Ljava/net/InetSocketAddress;
    .end local v2    # "sm":Ljava/lang/SecurityManager;
    :catchall_52
    move-exception v3

    :try_start_53
    monitor-exit v6

    throw v3
    :try_end_55
    .catchall {:try_start_53 .. :try_end_55} :catchall_55

    .line 819
    :catchall_55
    move-exception v3

    :try_start_56
    monitor-exit v5

    throw v3
    :try_end_58
    .catchall {:try_start_56 .. :try_end_58} :catchall_58

    .line 818
    :catchall_58
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method drop(Lsun/nio/ch/MembershipKeyImpl;)V
    .registers 11
    .param p1, "key"    # Lsun/nio/ch/MembershipKeyImpl;

    .prologue
    .line 958
    sget-boolean v4, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    if-nez v4, :cond_10

    invoke-virtual {p1}, Lsun/nio/ch/MembershipKeyImpl;->channel()Ljava/nio/channels/MulticastChannel;

    move-result-object v4

    if-eq v4, p0, :cond_10

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 960
    :cond_10
    iget-object v5, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v5

    .line 961
    :try_start_13
    invoke-virtual {p1}, Lsun/nio/ch/MembershipKeyImpl;->isValid()Z
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_5b

    move-result v4

    if-nez v4, :cond_1b

    monitor-exit v5

    .line 962
    return-void

    .line 965
    :cond_1b
    :try_start_1b
    instance-of v4, p1, Lsun/nio/ch/MembershipKeyImpl$Type6;

    if-eqz v4, :cond_3e

    .line 967
    move-object v0, p1

    check-cast v0, Lsun/nio/ch/MembershipKeyImpl$Type6;

    move-object v3, v0

    .line 968
    .local v3, "key6":Lsun/nio/ch/MembershipKeyImpl$Type6;
    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v3}, Lsun/nio/ch/MembershipKeyImpl$Type6;->groupAddress()[B

    move-result-object v6

    invoke-virtual {v3}, Lsun/nio/ch/MembershipKeyImpl$Type6;->index()I

    move-result v7

    invoke-virtual {v3}, Lsun/nio/ch/MembershipKeyImpl$Type6;->source()[B

    move-result-object v8

    invoke-static {v4, v6, v7, v8}, Lsun/nio/ch/Net;->drop6(Ljava/io/FileDescriptor;[BI[B)V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_34} :catch_54
    .catchall {:try_start_1b .. :try_end_34} :catchall_5b

    .line 979
    .end local v3    # "key6":Lsun/nio/ch/MembershipKeyImpl$Type6;
    :goto_34
    :try_start_34
    invoke-virtual {p1}, Lsun/nio/ch/MembershipKeyImpl;->invalidate()V

    .line 980
    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->registry:Lsun/nio/ch/MembershipRegistry;

    invoke-virtual {v4, p1}, Lsun/nio/ch/MembershipRegistry;->remove(Lsun/nio/ch/MembershipKeyImpl;)V
    :try_end_3c
    .catchall {:try_start_34 .. :try_end_3c} :catchall_5b

    monitor-exit v5

    .line 982
    return-void

    .line 970
    :cond_3e
    :try_start_3e
    move-object v0, p1

    check-cast v0, Lsun/nio/ch/MembershipKeyImpl$Type4;

    move-object v2, v0

    .line 971
    .local v2, "key4":Lsun/nio/ch/MembershipKeyImpl$Type4;
    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v2}, Lsun/nio/ch/MembershipKeyImpl$Type4;->groupAddress()I

    move-result v6

    invoke-virtual {v2}, Lsun/nio/ch/MembershipKeyImpl$Type4;->interfaceAddress()I

    move-result v7

    .line 972
    invoke-virtual {v2}, Lsun/nio/ch/MembershipKeyImpl$Type4;->source()I

    move-result v8

    .line 971
    invoke-static {v4, v6, v7, v8}, Lsun/nio/ch/Net;->drop4(Ljava/io/FileDescriptor;III)V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_53} :catch_54
    .catchall {:try_start_3e .. :try_end_53} :catchall_5b

    goto :goto_34

    .line 974
    .end local v2    # "key4":Lsun/nio/ch/MembershipKeyImpl$Type4;
    :catch_54
    move-exception v1

    .line 976
    .local v1, "ioe":Ljava/io/IOException;
    :try_start_55
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4
    :try_end_5b
    .catchall {:try_start_55 .. :try_end_5b} :catchall_5b

    .line 960
    .end local v1    # "ioe":Ljava/io/IOException;
    :catchall_5b
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method ensureOpenAndUnconnected()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 754
    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 755
    :try_start_3
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_12

    .line 756
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 754
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 757
    :cond_12
    :try_start_12
    iget v0, p0, Lsun/nio/ch/DatagramChannelImpl;->state:I

    if-eqz v0, :cond_1f

    .line 758
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Connect already invoked"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_f

    :cond_1f
    monitor-exit v1

    .line 760
    return-void
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1092
    :try_start_0
    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 1093
    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 1096
    :cond_9
    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_10

    .line 1097
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->close()V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_14

    .line 1099
    :cond_10
    invoke-super {p0}, Ljava/nio/channels/DatagramChannel;->finalize()V

    .line 1101
    return-void

    .line 1098
    :catchall_14
    move-exception v0

    .line 1099
    invoke-super {p0}, Ljava/nio/channels/DatagramChannel;->finalize()V

    .line 1098
    throw v0
.end method

.method public getFD()Ljava/io/FileDescriptor;
    .registers 2

    .prologue
    .line 1183
    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public getFDVal()I
    .registers 2

    .prologue
    .line 1187
    iget v0, p0, Lsun/nio/ch/DatagramChannelImpl;->fdVal:I

    return v0
.end method

.method public getLocalAddress()Ljava/net/SocketAddress;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 209
    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 210
    :try_start_3
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_12

    .line 211
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 209
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 213
    :cond_12
    :try_start_12
    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    invoke-static {v0}, Lsun/nio/ch/Net;->getRevealedLocalAddress(Ljava/net/InetSocketAddress;)Ljava/net/InetSocketAddress;
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_f

    move-result-object v0

    monitor-exit v1

    return-object v0
.end method

.method public getOption(Ljava/net/SocketOption;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
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
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    const/4 v7, 0x0

    .line 284
    if-nez p1, :cond_9

    .line 285
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 286
    :cond_9
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->supportedOptions()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_34

    .line 287
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\' not supported"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 289
    :cond_34
    iget-object v5, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v5

    .line 290
    :try_start_37
    invoke-direct {p0}, Lsun/nio/ch/DatagramChannelImpl;->ensureOpen()V

    .line 292
    sget-object v4, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    if-eq p1, v4, :cond_42

    .line 293
    sget-object v4, Ljava/net/StandardSocketOptions;->IP_MULTICAST_TTL:Ljava/net/SocketOption;

    if-ne p1, v4, :cond_4c

    .line 296
    :cond_42
    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    iget-object v6, p0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    invoke-static {v4, v6, p1}, Lsun/nio/ch/Net;->getSocketOption(Ljava/io/FileDescriptor;Ljava/net/ProtocolFamily;Ljava/net/SocketOption;)Ljava/lang/Object;
    :try_end_49
    .catchall {:try_start_37 .. :try_end_49} :catchall_77

    move-result-object v4

    monitor-exit v5

    return-object v4

    .line 294
    :cond_4c
    :try_start_4c
    sget-object v4, Ljava/net/StandardSocketOptions;->IP_MULTICAST_LOOP:Ljava/net/SocketOption;

    if-eq p1, v4, :cond_42

    .line 299
    sget-object v4, Ljava/net/StandardSocketOptions;->IP_MULTICAST_IF:Ljava/net/SocketOption;

    if-ne p1, v4, :cond_97

    .line 300
    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    sget-object v6, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    if-ne v4, v6, :cond_7c

    .line 301
    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v4}, Lsun/nio/ch/Net;->getInterface4(Ljava/io/FileDescriptor;)I
    :try_end_5f
    .catchall {:try_start_4c .. :try_end_5f} :catchall_77

    move-result v0

    .line 302
    .local v0, "address":I
    if-nez v0, :cond_64

    monitor-exit v5

    .line 303
    return-object v7

    .line 305
    :cond_64
    :try_start_64
    invoke-static {v0}, Lsun/nio/ch/Net;->inet4FromInt(I)Ljava/net/InetAddress;

    move-result-object v1

    .line 306
    .local v1, "ia":Ljava/net/InetAddress;
    invoke-static {v1}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v3

    .line 307
    .local v3, "ni":Ljava/net/NetworkInterface;
    if-nez v3, :cond_7a

    .line 308
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v6, "Unable to map address to interface"

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_77
    .catchall {:try_start_64 .. :try_end_77} :catchall_77

    .line 289
    .end local v0    # "address":I
    .end local v1    # "ia":Ljava/net/InetAddress;
    .end local v3    # "ni":Ljava/net/NetworkInterface;
    :catchall_77
    move-exception v4

    monitor-exit v5

    throw v4

    .restart local v0    # "address":I
    .restart local v1    # "ia":Ljava/net/InetAddress;
    .restart local v3    # "ni":Ljava/net/NetworkInterface;
    :cond_7a
    monitor-exit v5

    .line 309
    return-object v3

    .line 311
    .end local v0    # "address":I
    .end local v1    # "ia":Ljava/net/InetAddress;
    .end local v3    # "ni":Ljava/net/NetworkInterface;
    :cond_7c
    :try_start_7c
    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v4}, Lsun/nio/ch/Net;->getInterface6(Ljava/io/FileDescriptor;)I
    :try_end_81
    .catchall {:try_start_7c .. :try_end_81} :catchall_77

    move-result v2

    .line 312
    .local v2, "index":I
    if-nez v2, :cond_86

    monitor-exit v5

    .line 313
    return-object v7

    .line 315
    :cond_86
    :try_start_86
    invoke-static {v2}, Ljava/net/NetworkInterface;->getByIndex(I)Ljava/net/NetworkInterface;

    move-result-object v3

    .line 316
    .restart local v3    # "ni":Ljava/net/NetworkInterface;
    if-nez v3, :cond_95

    .line 317
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v6, "Unable to map index to interface"

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_95
    .catchall {:try_start_86 .. :try_end_95} :catchall_77

    :cond_95
    monitor-exit v5

    .line 318
    return-object v3

    .line 322
    .end local v2    # "index":I
    .end local v3    # "ni":Ljava/net/NetworkInterface;
    :cond_97
    :try_start_97
    sget-object v4, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    if-ne p1, v4, :cond_a7

    .line 323
    iget-boolean v4, p0, Lsun/nio/ch/DatagramChannelImpl;->reuseAddressEmulated:Z

    .line 322
    if-eqz v4, :cond_a7

    .line 325
    iget-boolean v4, p0, Lsun/nio/ch/DatagramChannelImpl;->isReuseAddress:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_a4
    .catchall {:try_start_97 .. :try_end_a4} :catchall_77

    move-result-object v4

    monitor-exit v5

    return-object v4

    .line 329
    :cond_a7
    :try_start_a7
    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    sget-object v6, Lsun/nio/ch/Net;->UNSPEC:Ljava/net/ProtocolFamily;

    invoke-static {v4, v6, p1}, Lsun/nio/ch/Net;->getSocketOption(Ljava/io/FileDescriptor;Ljava/net/ProtocolFamily;Ljava/net/SocketOption;)Ljava/lang/Object;
    :try_end_ae
    .catchall {:try_start_a7 .. :try_end_ae} :catchall_77

    move-result-object v4

    monitor-exit v5

    return-object v4
.end method

.method public getRemoteAddress()Ljava/net/SocketAddress;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 220
    :try_start_3
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_12

    .line 221
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 219
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 222
    :cond_12
    :try_start_12
    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;
    :try_end_14
    .catchall {:try_start_12 .. :try_end_14} :catchall_f

    monitor-exit v1

    return-object v0
.end method

.method protected implCloseSelectableChannel()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 1054
    iget-object v3, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1056
    :try_start_5
    iget-object v2, p0, Lsun/nio/ch/DatagramChannelImpl;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v2}, Ldalvik/system/CloseGuard;->close()V

    .line 1057
    iget v2, p0, Lsun/nio/ch/DatagramChannelImpl;->state:I

    const/4 v4, 0x2

    if-eq v2, v4, :cond_16

    .line 1058
    sget-object v2, Lsun/nio/ch/DatagramChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v2, v4}, Lsun/nio/ch/NativeDispatcher;->preClose(Ljava/io/FileDescriptor;)V

    .line 1059
    :cond_16
    invoke-static {}, Lsun/net/ResourceManager;->afterUdpClose()V

    .line 1062
    iget-object v2, p0, Lsun/nio/ch/DatagramChannelImpl;->registry:Lsun/nio/ch/MembershipRegistry;

    if-eqz v2, :cond_22

    .line 1063
    iget-object v2, p0, Lsun/nio/ch/DatagramChannelImpl;->registry:Lsun/nio/ch/MembershipRegistry;

    invoke-virtual {v2}, Lsun/nio/ch/MembershipRegistry;->invalidateAll()V

    .line 1066
    :cond_22
    iget-wide v0, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    .local v0, "th":J
    cmp-long v2, v0, v6

    if-eqz v2, :cond_2b

    .line 1067
    invoke-static {v0, v1}, Lsun/nio/ch/NativeThread;->signal(J)V

    .line 1068
    :cond_2b
    iget-wide v0, p0, Lsun/nio/ch/DatagramChannelImpl;->writerThread:J

    cmp-long v2, v0, v6

    if-eqz v2, :cond_34

    .line 1069
    invoke-static {v0, v1}, Lsun/nio/ch/NativeThread;->signal(J)V

    .line 1070
    :cond_34
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isRegistered()Z

    move-result v2

    if-nez v2, :cond_3d

    .line 1071
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->kill()V
    :try_end_3d
    .catchall {:try_start_5 .. :try_end_3d} :catchall_3f

    :cond_3d
    monitor-exit v3

    .line 1073
    return-void

    .line 1054
    .end local v0    # "th":J
    :catchall_3f
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method protected implConfigureBlocking(Z)V
    .registers 3
    .param p1, "block"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 694
    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p1}, Lsun/nio/ch/IOUtil;->configureBlocking(Ljava/io/FileDescriptor;Z)V

    .line 695
    return-void
.end method

.method public isConnected()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 748
    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 749
    :try_start_4
    iget v2, p0, Lsun/nio/ch/DatagramChannelImpl;->state:I
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_c

    if-ne v2, v0, :cond_a

    :goto_8
    monitor-exit v1

    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_8

    .line 748
    :catchall_c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public join(Ljava/net/InetAddress;Ljava/net/NetworkInterface;)Ljava/nio/channels/MembershipKey;
    .registers 4
    .param p1, "group"    # Ljava/net/InetAddress;
    .param p2, "interf"    # Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 942
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lsun/nio/ch/DatagramChannelImpl;->innerJoin(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;)Ljava/nio/channels/MembershipKey;

    move-result-object v0

    return-object v0
.end method

.method public join(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;)Ljava/nio/channels/MembershipKey;
    .registers 6
    .param p1, "group"    # Ljava/net/InetAddress;
    .param p2, "interf"    # Ljava/net/NetworkInterface;
    .param p3, "source"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 951
    if-nez p3, :cond_b

    .line 952
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "source address is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 953
    :cond_b
    invoke-direct {p0, p1, p2, p3}, Lsun/nio/ch/DatagramChannelImpl;->innerJoin(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;)Ljava/nio/channels/MembershipKey;

    move-result-object v0

    return-object v0
.end method

.method public kill()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 1076
    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1077
    :try_start_4
    iget v0, p0, Lsun/nio/ch/DatagramChannelImpl;->state:I
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_2a

    if-ne v0, v2, :cond_a

    monitor-exit v1

    .line 1078
    return-void

    .line 1079
    :cond_a
    :try_start_a
    iget v0, p0, Lsun/nio/ch/DatagramChannelImpl;->state:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_14

    .line 1080
    const/4 v0, 0x2

    iput v0, p0, Lsun/nio/ch/DatagramChannelImpl;->state:I
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_2a

    monitor-exit v1

    .line 1081
    return-void

    .line 1083
    :cond_14
    :try_start_14
    sget-boolean v0, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    if-nez v0, :cond_2d

    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_24

    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_2d

    :cond_24
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_2a
    .catchall {:try_start_14 .. :try_end_2a} :catchall_2a

    .line 1076
    :catchall_2a
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1084
    :cond_2d
    :try_start_2d
    sget-object v0, Lsun/nio/ch/DatagramChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    iget-object v2, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v2}, Lsun/nio/ch/NativeDispatcher;->close(Ljava/io/FileDescriptor;)V

    .line 1085
    const/4 v0, 0x2

    iput v0, p0, Lsun/nio/ch/DatagramChannelImpl;->state:I
    :try_end_37
    .catchall {:try_start_2d .. :try_end_37} :catchall_2a

    monitor-exit v1

    .line 1087
    return-void
.end method

.method public localAddress()Ljava/net/SocketAddress;
    .registers 3

    .prologue
    .line 698
    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 699
    :try_start_3
    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->localAddress:Ljava/net/InetSocketAddress;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    .line 698
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method poll(IJ)I
    .registers 10
    .param p1, "events"    # I
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1147
    sget-boolean v2, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_1b

    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->blockingLock()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isBlocking()Z

    move-result v2

    if-eqz v2, :cond_1b

    :cond_15
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1149
    :cond_1b
    iget-object v2, p0, Lsun/nio/ch/DatagramChannelImpl;->readLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1150
    const/4 v0, 0x0

    .line 1152
    .local v0, "n":I
    :try_start_1f
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->begin()V

    .line 1153
    iget-object v3, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_25
    .catchall {:try_start_1f .. :try_end_25} :catchall_52

    .line 1154
    :try_start_25
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_4f

    move-result v4

    if-nez v4, :cond_36

    :try_start_2b
    monitor-exit v3
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_52

    .line 1160
    const-wide/16 v4, 0x0

    :try_start_2e
    iput-wide v4, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    .line 1161
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V
    :try_end_34
    .catchall {:try_start_2e .. :try_end_34} :catchall_5c

    monitor-exit v2

    .line 1155
    return v1

    .line 1156
    :cond_36
    :try_start_36
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    move-result-wide v4

    iput-wide v4, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J
    :try_end_3c
    .catchall {:try_start_36 .. :try_end_3c} :catchall_4f

    :try_start_3c
    monitor-exit v3

    .line 1158
    iget-object v3, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v3, p1, p2, p3}, Lsun/nio/ch/Net;->poll(Ljava/io/FileDescriptor;IJ)I
    :try_end_42
    .catchall {:try_start_3c .. :try_end_42} :catchall_52

    move-result v0

    .line 1160
    const-wide/16 v4, 0x0

    :try_start_45
    iput-wide v4, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    .line 1161
    if-lez v0, :cond_4a

    const/4 v1, 0x1

    :cond_4a
    invoke-virtual {p0, v1}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V
    :try_end_4d
    .catchall {:try_start_45 .. :try_end_4d} :catchall_5c

    monitor-exit v2

    .line 1163
    return v0

    .line 1153
    :catchall_4f
    move-exception v1

    :try_start_50
    monitor-exit v3

    throw v1
    :try_end_52
    .catchall {:try_start_50 .. :try_end_52} :catchall_52

    .line 1159
    :catchall_52
    move-exception v1

    .line 1160
    const-wide/16 v4, 0x0

    :try_start_55
    iput-wide v4, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    .line 1161
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    .line 1159
    throw v1
    :try_end_5c
    .catchall {:try_start_55 .. :try_end_5c} :catchall_5c

    .line 1149
    :catchall_5c
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .registers 11
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 582
    if-nez p1, :cond_b

    .line 583
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 584
    :cond_b
    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->readLock:Ljava/lang/Object;

    monitor-enter v4

    .line 585
    :try_start_e
    iget-object v5, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_23

    .line 586
    :try_start_11
    invoke-direct {p0}, Lsun/nio/ch/DatagramChannelImpl;->ensureOpen()V

    .line 587
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isConnected()Z

    move-result v1

    if-nez v1, :cond_26

    .line 588
    new-instance v1, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {v1}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    throw v1
    :try_end_20
    .catchall {:try_start_11 .. :try_end_20} :catchall_20

    .line 585
    :catchall_20
    move-exception v1

    :try_start_21
    monitor-exit v5

    throw v1
    :try_end_23
    .catchall {:try_start_21 .. :try_end_23} :catchall_23

    .line 584
    :catchall_23
    move-exception v1

    monitor-exit v4

    throw v1

    :cond_26
    :try_start_26
    monitor-exit v5
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_23

    .line 590
    const/4 v0, 0x0

    .line 592
    .local v0, "n":I
    :try_start_28
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->begin()V

    .line 593
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z
    :try_end_2e
    .catchall {:try_start_28 .. :try_end_2e} :catchall_87

    move-result v1

    if-nez v1, :cond_4b

    .line 601
    const-wide/16 v6, 0x0

    :try_start_33
    iput-wide v6, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    .line 602
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    .line 603
    sget-boolean v1, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    if-nez v1, :cond_49

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v1

    if-nez v1, :cond_49

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_49
    .catchall {:try_start_33 .. :try_end_49} :catchall_23

    :cond_49
    monitor-exit v4

    .line 594
    return v3

    .line 595
    :cond_4b
    :try_start_4b
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    move-result-wide v6

    iput-wide v6, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    .line 597
    :cond_51
    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    const-wide/16 v6, -0x1

    sget-object v5, Lsun/nio/ch/DatagramChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    invoke-static {v1, p1, v6, v7, v5}, Lsun/nio/ch/IOUtil;->read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I

    move-result v0

    .line 598
    const/4 v1, -0x3

    if-ne v0, v1, :cond_64

    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z

    move-result v1

    if-nez v1, :cond_51

    .line 599
    :cond_64
    invoke-static {v0}, Lsun/nio/ch/IOStatus;->normalize(I)I
    :try_end_67
    .catchall {:try_start_4b .. :try_end_67} :catchall_87

    move-result v1

    .line 601
    const-wide/16 v6, 0x0

    :try_start_6a
    iput-wide v6, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    .line 602
    if-gtz v0, :cond_70

    if-ne v0, v8, :cond_83

    :cond_70
    :goto_70
    invoke-virtual {p0, v2}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    .line 603
    sget-boolean v2, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_85

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v2

    if-nez v2, :cond_85

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_83
    .catchall {:try_start_6a .. :try_end_83} :catchall_23

    :cond_83
    move v2, v3

    .line 602
    goto :goto_70

    :cond_85
    monitor-exit v4

    .line 599
    return v1

    .line 600
    :catchall_87
    move-exception v1

    .line 601
    const-wide/16 v6, 0x0

    :try_start_8a
    iput-wide v6, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    .line 602
    if-gtz v0, :cond_90

    if-ne v0, v8, :cond_a3

    :cond_90
    :goto_90
    invoke-virtual {p0, v2}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    .line 603
    sget-boolean v2, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_a5

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v2

    if-nez v2, :cond_a5

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_a3
    move v2, v3

    .line 602
    goto :goto_90

    .line 600
    :cond_a5
    throw v1
    :try_end_a6
    .catchall {:try_start_8a .. :try_end_a6} :catchall_23
.end method

.method public read([Ljava/nio/ByteBuffer;II)J
    .registers 12
    .param p1, "dsts"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 611
    if-ltz p2, :cond_4

    if-gez p3, :cond_a

    .line 612
    :cond_4
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 611
    :cond_a
    array-length v2, p1

    sub-int/2addr v2, p3

    if-gt p2, v2, :cond_4

    .line 613
    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->readLock:Ljava/lang/Object;

    monitor-enter v4

    .line 614
    :try_start_11
    iget-object v3, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_26

    .line 615
    :try_start_14
    invoke-direct {p0}, Lsun/nio/ch/DatagramChannelImpl;->ensureOpen()V

    .line 616
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isConnected()Z

    move-result v2

    if-nez v2, :cond_29

    .line 617
    new-instance v2, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {v2}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    throw v2
    :try_end_23
    .catchall {:try_start_14 .. :try_end_23} :catchall_23

    .line 614
    :catchall_23
    move-exception v2

    :try_start_24
    monitor-exit v3

    throw v2
    :try_end_26
    .catchall {:try_start_24 .. :try_end_26} :catchall_26

    .line 613
    :catchall_26
    move-exception v2

    monitor-exit v4

    throw v2

    :cond_29
    :try_start_29
    monitor-exit v3
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_26

    .line 619
    const-wide/16 v0, 0x0

    .line 621
    .local v0, "n":J
    :try_start_2c
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->begin()V

    .line 622
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_97

    move-result v2

    if-nez v2, :cond_51

    .line 630
    const-wide/16 v2, 0x0

    :try_start_37
    iput-wide v2, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    .line 631
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    .line 632
    sget-boolean v2, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_4d

    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    move-result v2

    if-nez v2, :cond_4d

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_4d
    .catchall {:try_start_37 .. :try_end_4d} :catchall_26

    .line 623
    :cond_4d
    const-wide/16 v2, 0x0

    monitor-exit v4

    return-wide v2

    .line 624
    :cond_51
    :try_start_51
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    move-result-wide v2

    iput-wide v2, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    .line 626
    :cond_57
    iget-object v2, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    sget-object v3, Lsun/nio/ch/DatagramChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    invoke-static {v2, p1, p2, p3, v3}, Lsun/nio/ch/IOUtil;->read(Ljava/io/FileDescriptor;[Ljava/nio/ByteBuffer;IILsun/nio/ch/NativeDispatcher;)J

    move-result-wide v0

    .line 627
    const-wide/16 v2, -0x3

    cmp-long v2, v0, v2

    if-nez v2, :cond_6b

    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z

    move-result v2

    if-nez v2, :cond_57

    .line 628
    :cond_6b
    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->normalize(J)J
    :try_end_6e
    .catchall {:try_start_51 .. :try_end_6e} :catchall_97

    move-result-wide v6

    .line 630
    const-wide/16 v2, 0x0

    :try_start_71
    iput-wide v2, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    .line 631
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_7f

    const-wide/16 v2, -0x2

    cmp-long v2, v0, v2

    if-nez v2, :cond_93

    :cond_7f
    const/4 v2, 0x1

    :goto_80
    invoke-virtual {p0, v2}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    .line 632
    sget-boolean v2, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_95

    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    move-result v2

    if-nez v2, :cond_95

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_93
    .catchall {:try_start_71 .. :try_end_93} :catchall_26

    .line 631
    :cond_93
    const/4 v2, 0x0

    goto :goto_80

    :cond_95
    monitor-exit v4

    .line 628
    return-wide v6

    .line 629
    :catchall_97
    move-exception v2

    .line 630
    const-wide/16 v6, 0x0

    :try_start_9a
    iput-wide v6, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    .line 631
    const-wide/16 v6, 0x0

    cmp-long v3, v0, v6

    if-gtz v3, :cond_a8

    const-wide/16 v6, -0x2

    cmp-long v3, v0, v6

    if-nez v3, :cond_bc

    :cond_a8
    const/4 v3, 0x1

    :goto_a9
    invoke-virtual {p0, v3}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    .line 632
    sget-boolean v3, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    if-nez v3, :cond_be

    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    move-result v3

    if-nez v3, :cond_be

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 631
    :cond_bc
    const/4 v3, 0x0

    goto :goto_a9

    .line 629
    :cond_be
    throw v2
    :try_end_bf
    .catchall {:try_start_9a .. :try_end_bf} :catchall_26
.end method

.method public receive(Ljava/nio/ByteBuffer;)Ljava/net/SocketAddress;
    .registers 16
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v13, -0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v12, 0x0

    .line 366
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 367
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Read-only buffer"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 368
    :cond_13
    if-nez p1, :cond_1b

    .line 369
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 372
    :cond_1b
    iget-object v5, p0, Lsun/nio/ch/DatagramChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    if-nez v5, :cond_20

    .line 373
    return-object v12

    .line 374
    :cond_20
    iget-object v8, p0, Lsun/nio/ch/DatagramChannelImpl;->readLock:Ljava/lang/Object;

    monitor-enter v8

    .line 375
    :try_start_23
    invoke-direct {p0}, Lsun/nio/ch/DatagramChannelImpl;->ensureOpen()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_49

    .line 379
    const/4 v2, 0x0

    .line 380
    .local v2, "n":I
    const/4 v0, 0x0

    .line 382
    .local v0, "bb":Ljava/nio/ByteBuffer;
    :try_start_28
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->begin()V

    .line 383
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z
    :try_end_2e
    .catchall {:try_start_28 .. :try_end_2e} :catchall_112

    move-result v5

    if-nez v5, :cond_4e

    .line 421
    const-wide/16 v6, 0x0

    :try_start_33
    iput-wide v6, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    .line 422
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    .line 423
    sget-boolean v5, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    if-nez v5, :cond_4c

    invoke-static {v2}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v5

    if-nez v5, :cond_4c

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5
    :try_end_49
    .catchall {:try_start_33 .. :try_end_49} :catchall_49

    .line 374
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    .end local v2    # "n":I
    :catchall_49
    move-exception v5

    monitor-exit v8

    throw v5

    .restart local v0    # "bb":Ljava/nio/ByteBuffer;
    .restart local v2    # "n":I
    :cond_4c
    monitor-exit v8

    .line 384
    return-object v12

    .line 385
    :cond_4e
    :try_start_4e
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v4

    .line 386
    .local v4, "security":Ljava/lang/SecurityManager;
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    move-result-wide v10

    iput-wide v10, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    .line 387
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isConnected()Z

    move-result v5

    if-nez v5, :cond_60

    if-nez v4, :cond_90

    .line 389
    :cond_60
    iget-object v5, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-direct {p0, v5, p1}, Lsun/nio/ch/DatagramChannelImpl;->receive(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 390
    const/4 v5, -0x3

    if-ne v2, v5, :cond_6f

    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z
    :try_end_6c
    .catchall {:try_start_4e .. :try_end_6c} :catchall_112

    move-result v5

    if-nez v5, :cond_60

    .line 391
    :cond_6f
    if-ne v2, v13, :cond_e6

    .line 421
    const-wide/16 v10, 0x0

    :try_start_73
    iput-wide v10, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    .line 422
    if-gtz v2, :cond_79

    if-ne v2, v13, :cond_8c

    :cond_79
    :goto_79
    invoke-virtual {p0, v6}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    .line 423
    sget-boolean v5, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    if-nez v5, :cond_8e

    invoke-static {v2}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v5

    if-nez v5, :cond_8e

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5
    :try_end_8c
    .catchall {:try_start_73 .. :try_end_8c} :catchall_49

    :cond_8c
    move v6, v7

    .line 422
    goto :goto_79

    :cond_8e
    monitor-exit v8

    .line 392
    return-object v12

    .line 394
    :cond_90
    :try_start_90
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-static {v5}, Lsun/nio/ch/Util;->getTemporaryDirectBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 397
    .local v0, "bb":Ljava/nio/ByteBuffer;
    :cond_98
    :goto_98
    iget-object v5, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-direct {p0, v5, v0}, Lsun/nio/ch/DatagramChannelImpl;->receive(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 398
    const/4 v5, -0x3

    if-ne v2, v5, :cond_a7

    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z
    :try_end_a4
    .catchall {:try_start_90 .. :try_end_a4} :catchall_112

    move-result v5

    if-nez v5, :cond_98

    .line 399
    :cond_a7
    if-ne v2, v13, :cond_cd

    .line 419
    if-eqz v0, :cond_ae

    .line 420
    :try_start_ab
    invoke-static {v0}, Lsun/nio/ch/Util;->releaseTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 421
    :cond_ae
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    .line 422
    if-gtz v2, :cond_b6

    if-ne v2, v13, :cond_c9

    :cond_b6
    :goto_b6
    invoke-virtual {p0, v6}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    .line 423
    sget-boolean v5, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    if-nez v5, :cond_cb

    invoke-static {v2}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v5

    if-nez v5, :cond_cb

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5
    :try_end_c9
    .catchall {:try_start_ab .. :try_end_c9} :catchall_49

    :cond_c9
    move v6, v7

    .line 422
    goto :goto_b6

    :cond_cb
    monitor-exit v8

    .line 400
    return-object v12

    .line 401
    :cond_cd
    :try_start_cd
    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->sender:Ljava/net/SocketAddress;

    check-cast v1, Ljava/net/InetSocketAddress;
    :try_end_d1
    .catchall {:try_start_cd .. :try_end_d1} :catchall_112

    .line 404
    .local v1, "isa":Ljava/net/InetSocketAddress;
    :try_start_d1
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    .line 405
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v9

    .line 403
    invoke-virtual {v4, v5, v9}, Ljava/lang/SecurityManager;->checkAccept(Ljava/lang/String;I)V
    :try_end_e0
    .catch Ljava/lang/SecurityException; {:try_start_d1 .. :try_end_e0} :catch_108
    .catchall {:try_start_d1 .. :try_end_e0} :catchall_112

    .line 412
    :try_start_e0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 413
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 417
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    .end local v1    # "isa":Ljava/net/InetSocketAddress;
    :cond_e6
    iget-object v5, p0, Lsun/nio/ch/DatagramChannelImpl;->sender:Ljava/net/SocketAddress;
    :try_end_e8
    .catchall {:try_start_e0 .. :try_end_e8} :catchall_112

    .line 419
    if-eqz v0, :cond_ed

    .line 420
    :try_start_ea
    invoke-static {v0}, Lsun/nio/ch/Util;->releaseTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 421
    :cond_ed
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    .line 422
    if-gtz v2, :cond_f5

    if-ne v2, v13, :cond_10e

    :cond_f5
    :goto_f5
    invoke-virtual {p0, v6}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    .line 423
    sget-boolean v6, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    if-nez v6, :cond_110

    invoke-static {v2}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v6

    if-nez v6, :cond_110

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5
    :try_end_108
    .catchall {:try_start_ea .. :try_end_108} :catchall_49

    .line 406
    .restart local v0    # "bb":Ljava/nio/ByteBuffer;
    .restart local v1    # "isa":Ljava/net/InetSocketAddress;
    :catch_108
    move-exception v3

    .line 408
    .local v3, "se":Ljava/lang/SecurityException;
    :try_start_109
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_10c
    .catchall {:try_start_109 .. :try_end_10c} :catchall_112

    .line 409
    const/4 v2, 0x0

    goto :goto_98

    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    .end local v1    # "isa":Ljava/net/InetSocketAddress;
    .end local v3    # "se":Ljava/lang/SecurityException;
    :cond_10e
    move v6, v7

    .line 422
    goto :goto_f5

    :cond_110
    monitor-exit v8

    .line 417
    return-object v5

    .line 418
    .end local v4    # "security":Ljava/lang/SecurityManager;
    :catchall_112
    move-exception v5

    .line 419
    if-eqz v0, :cond_118

    .line 420
    :try_start_115
    invoke-static {v0}, Lsun/nio/ch/Util;->releaseTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 421
    :cond_118
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    .line 422
    if-gtz v2, :cond_120

    if-ne v2, v13, :cond_133

    :cond_120
    :goto_120
    invoke-virtual {p0, v6}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    .line 423
    sget-boolean v6, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    if-nez v6, :cond_135

    invoke-static {v2}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v6

    if-nez v6, :cond_135

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_133
    move v6, v7

    .line 422
    goto :goto_120

    .line 418
    :cond_135
    throw v5
    :try_end_136
    .catchall {:try_start_115 .. :try_end_136} :catchall_49
.end method

.method public remoteAddress()Ljava/net/SocketAddress;
    .registers 3

    .prologue
    .line 704
    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 705
    :try_start_3
    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    .line 704
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public send(Ljava/nio/ByteBuffer;Ljava/net/SocketAddress;)I
    .registers 14
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "target"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, -0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 470
    if-nez p1, :cond_b

    .line 471
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 473
    :cond_b
    iget-object v7, p0, Lsun/nio/ch/DatagramChannelImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v7

    .line 474
    :try_start_e
    invoke-direct {p0}, Lsun/nio/ch/DatagramChannelImpl;->ensureOpen()V

    .line 475
    invoke-static {p2}, Lsun/nio/ch/Net;->checkAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;

    move-result-object v1

    .line 476
    .local v1, "isa":Ljava/net/InetSocketAddress;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 477
    .local v0, "ia":Ljava/net/InetAddress;
    if-nez v0, :cond_27

    .line 478
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "Target address not resolved"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_24
    .catchall {:try_start_e .. :try_end_24} :catchall_24

    .line 473
    .end local v0    # "ia":Ljava/net/InetAddress;
    .end local v1    # "isa":Ljava/net/InetSocketAddress;
    :catchall_24
    move-exception v4

    monitor-exit v7

    throw v4

    .line 479
    .restart local v0    # "ia":Ljava/net/InetAddress;
    .restart local v1    # "isa":Ljava/net/InetSocketAddress;
    :cond_27
    :try_start_27
    iget-object v8, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_24

    .line 480
    :try_start_2a
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isConnected()Z

    move-result v4

    if-nez v4, :cond_79

    .line 481
    if-nez p2, :cond_3b

    .line 482
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4
    :try_end_38
    .catchall {:try_start_2a .. :try_end_38} :catchall_38

    .line 479
    :catchall_38
    move-exception v4

    :try_start_39
    monitor-exit v8

    throw v4
    :try_end_3b
    .catchall {:try_start_39 .. :try_end_3b} :catchall_24

    .line 483
    :cond_3b
    :try_start_3b
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v3

    .line 484
    .local v3, "sm":Ljava/lang/SecurityManager;
    if-eqz v3, :cond_4a

    .line 485
    invoke-virtual {v0}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v4

    if-eqz v4, :cond_6d

    .line 486
    invoke-virtual {v3, v0}, Ljava/lang/SecurityManager;->checkMulticast(Ljava/net/InetAddress;)V
    :try_end_4a
    .catchall {:try_start_3b .. :try_end_4a} :catchall_38

    :cond_4a
    :goto_4a
    :try_start_4a
    monitor-exit v8
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_24

    .line 501
    const/4 v2, 0x0

    .line 503
    .local v2, "n":I
    :try_start_4c
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->begin()V

    .line 504
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z
    :try_end_52
    .catchall {:try_start_4c .. :try_end_52} :catchall_e7

    move-result v4

    if-nez v4, :cond_93

    .line 520
    const-wide/16 v4, 0x0

    :try_start_57
    iput-wide v4, p0, Lsun/nio/ch/DatagramChannelImpl;->writerThread:J

    .line 521
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    .line 522
    sget-boolean v4, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    if-nez v4, :cond_91

    invoke-static {v2}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v4

    if-nez v4, :cond_91

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
    :try_end_6d
    .catchall {:try_start_57 .. :try_end_6d} :catchall_24

    .line 488
    .end local v2    # "n":I
    :cond_6d
    :try_start_6d
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    .line 489
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v9

    .line 488
    invoke-virtual {v3, v4, v9}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    goto :goto_4a

    .line 493
    .end local v3    # "sm":Ljava/lang/SecurityManager;
    :cond_79
    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {p2, v4}, Ljava/net/SocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8a

    .line 494
    new-instance v4, Ljava/lang/IllegalArgumentException;

    .line 495
    const-string/jumbo v5, "Connected address not equal to target address"

    .line 494
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 497
    :cond_8a
    invoke-virtual {p0, p1}, Lsun/nio/ch/DatagramChannelImpl;->write(Ljava/nio/ByteBuffer;)I
    :try_end_8d
    .catchall {:try_start_6d .. :try_end_8d} :catchall_38

    move-result v4

    :try_start_8e
    monitor-exit v8
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_24

    monitor-exit v7

    return v4

    .restart local v2    # "n":I
    .restart local v3    # "sm":Ljava/lang/SecurityManager;
    :cond_91
    monitor-exit v7

    .line 505
    return v6

    .line 506
    :cond_93
    :try_start_93
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    move-result-wide v8

    iput-wide v8, p0, Lsun/nio/ch/DatagramChannelImpl;->writerThread:J

    .line 507
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v4

    invoke-interface {v4}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    .line 510
    :cond_a0
    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-direct {p0, v4, p1, v1}, Lsun/nio/ch/DatagramChannelImpl;->send(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;Ljava/net/InetSocketAddress;)I

    move-result v2

    .line 511
    const/4 v4, -0x3

    if-ne v2, v4, :cond_af

    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z

    move-result v4

    if-nez v4, :cond_a0

    .line 513
    :cond_af
    iget-object v8, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_b2
    .catchall {:try_start_93 .. :try_end_b2} :catchall_e7

    .line 514
    :try_start_b2
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_c4

    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    if-nez v4, :cond_c4

    .line 515
    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v4}, Lsun/nio/ch/Net;->localAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    move-result-object v4

    iput-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->localAddress:Ljava/net/InetSocketAddress;
    :try_end_c4
    .catchall {:try_start_b2 .. :try_end_c4} :catchall_e4

    :cond_c4
    :try_start_c4
    monitor-exit v8

    .line 518
    invoke-static {v2}, Lsun/nio/ch/IOStatus;->normalize(I)I
    :try_end_c8
    .catchall {:try_start_c4 .. :try_end_c8} :catchall_e7

    move-result v4

    .line 520
    const-wide/16 v8, 0x0

    :try_start_cb
    iput-wide v8, p0, Lsun/nio/ch/DatagramChannelImpl;->writerThread:J

    .line 521
    if-gtz v2, :cond_d1

    if-ne v2, v10, :cond_103

    :cond_d1
    :goto_d1
    invoke-virtual {p0, v5}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    .line 522
    sget-boolean v5, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    if-nez v5, :cond_105

    invoke-static {v2}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v5

    if-nez v5, :cond_105

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
    :try_end_e4
    .catchall {:try_start_cb .. :try_end_e4} :catchall_24

    .line 513
    :catchall_e4
    move-exception v4

    :try_start_e5
    monitor-exit v8

    throw v4
    :try_end_e7
    .catchall {:try_start_e5 .. :try_end_e7} :catchall_e7

    .line 519
    :catchall_e7
    move-exception v4

    .line 520
    const-wide/16 v8, 0x0

    :try_start_ea
    iput-wide v8, p0, Lsun/nio/ch/DatagramChannelImpl;->writerThread:J

    .line 521
    if-gtz v2, :cond_f0

    if-ne v2, v10, :cond_107

    :cond_f0
    :goto_f0
    invoke-virtual {p0, v5}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    .line 522
    sget-boolean v5, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    if-nez v5, :cond_109

    invoke-static {v2}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v5

    if-nez v5, :cond_109

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
    :try_end_103
    .catchall {:try_start_ea .. :try_end_103} :catchall_24

    :cond_103
    move v5, v6

    .line 521
    goto :goto_d1

    :cond_105
    monitor-exit v7

    .line 518
    return v4

    :cond_107
    move v5, v6

    .line 521
    goto :goto_f0

    .line 519
    :cond_109
    :try_start_109
    throw v4
    :try_end_10a
    .catchall {:try_start_109 .. :try_end_10a} :catchall_24
.end method

.method public setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/DatagramChannel;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/SocketOption",
            "<TT;>;TT;)",
            "Ljava/nio/channels/DatagramChannel;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 230
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_8

    .line 231
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 232
    :cond_8
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->supportedOptions()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_33

    .line 233
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\' not supported"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 235
    :cond_33
    iget-object v6, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v6

    .line 236
    :try_start_36
    invoke-direct {p0}, Lsun/nio/ch/DatagramChannelImpl;->ensureOpen()V

    .line 238
    sget-object v5, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    if-eq p1, v5, :cond_41

    .line 239
    sget-object v5, Ljava/net/StandardSocketOptions;->IP_MULTICAST_TTL:Ljava/net/SocketOption;

    if-ne p1, v5, :cond_4a

    .line 243
    :cond_41
    iget-object v5, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    iget-object v7, p0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    invoke-static {v5, v7, p1, p2}, Lsun/nio/ch/Net;->setSocketOption(Ljava/io/FileDescriptor;Ljava/net/ProtocolFamily;Ljava/net/SocketOption;Ljava/lang/Object;)V
    :try_end_48
    .catchall {:try_start_36 .. :try_end_48} :catchall_5d

    monitor-exit v6

    .line 244
    return-object p0

    .line 240
    :cond_4a
    :try_start_4a
    sget-object v5, Ljava/net/StandardSocketOptions;->IP_MULTICAST_LOOP:Ljava/net/SocketOption;

    if-eq p1, v5, :cond_41

    .line 247
    sget-object v5, Ljava/net/StandardSocketOptions;->IP_MULTICAST_IF:Ljava/net/SocketOption;

    if-ne p1, v5, :cond_9a

    .line 248
    if-nez p2, :cond_60

    .line 249
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "Cannot set IP_MULTICAST_IF to \'null\'"

    invoke-direct {v5, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_5d
    .catchall {:try_start_4a .. :try_end_5d} :catchall_5d

    .line 235
    :catchall_5d
    move-exception v5

    monitor-exit v6

    throw v5

    .line 250
    :cond_60
    :try_start_60
    move-object v0, p2

    check-cast v0, Ljava/net/NetworkInterface;

    move-object v2, v0

    .line 251
    .local v2, "interf":Ljava/net/NetworkInterface;
    iget-object v5, p0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    sget-object v7, Ljava/net/StandardProtocolFamily;->INET6:Ljava/net/StandardProtocolFamily;

    if-ne v5, v7, :cond_81

    .line 252
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v1

    .line 253
    .local v1, "index":I
    const/4 v5, -0x1

    if-ne v1, v5, :cond_7a

    .line 254
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v7, "Network interface cannot be identified"

    invoke-direct {v5, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 255
    :cond_7a
    iget-object v5, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v5, v1}, Lsun/nio/ch/Net;->setInterface6(Ljava/io/FileDescriptor;I)V
    :try_end_7f
    .catchall {:try_start_60 .. :try_end_7f} :catchall_5d

    .end local v1    # "index":I
    :goto_7f
    monitor-exit v6

    .line 264
    return-object p0

    .line 258
    :cond_81
    :try_start_81
    invoke-static {v2}, Lsun/nio/ch/Net;->anyInet4Address(Ljava/net/NetworkInterface;)Ljava/net/Inet4Address;

    move-result-object v3

    .line 259
    .local v3, "target":Ljava/net/Inet4Address;
    if-nez v3, :cond_90

    .line 260
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v7, "Network interface not configured for IPv4"

    invoke-direct {v5, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 261
    :cond_90
    invoke-static {v3}, Lsun/nio/ch/Net;->inet4AsInt(Ljava/net/InetAddress;)I

    move-result v4

    .line 262
    .local v4, "targetAddress":I
    iget-object v5, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v5, v4}, Lsun/nio/ch/Net;->setInterface4(Ljava/io/FileDescriptor;I)V

    goto :goto_7f

    .line 266
    .end local v2    # "interf":Ljava/net/NetworkInterface;
    .end local v3    # "target":Ljava/net/Inet4Address;
    .end local v4    # "targetAddress":I
    :cond_9a
    sget-object v5, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    if-ne p1, v5, :cond_b5

    .line 267
    invoke-static {}, Lsun/nio/ch/Net;->useExclusiveBind()Z

    move-result v5

    .line 266
    if-eqz v5, :cond_b5

    .line 267
    iget-object v5, p0, Lsun/nio/ch/DatagramChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    if-eqz v5, :cond_b5

    .line 269
    const/4 v5, 0x1

    iput-boolean v5, p0, Lsun/nio/ch/DatagramChannelImpl;->reuseAddressEmulated:Z

    .line 270
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, p0, Lsun/nio/ch/DatagramChannelImpl;->isReuseAddress:Z

    .line 274
    :cond_b5
    iget-object v5, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    sget-object v7, Lsun/nio/ch/Net;->UNSPEC:Ljava/net/ProtocolFamily;

    invoke-static {v5, v7, p1, p2}, Lsun/nio/ch/Net;->setSocketOption(Ljava/io/FileDescriptor;Ljava/net/ProtocolFamily;Ljava/net/SocketOption;Ljava/lang/Object;)V
    :try_end_bc
    .catchall {:try_start_81 .. :try_end_bc} :catchall_5d

    monitor-exit v6

    .line 275
    return-object p0
.end method

.method public bridge synthetic setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/NetworkChannel;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 226
    invoke-virtual {p0, p1, p2}, Lsun/nio/ch/DatagramChannelImpl;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    return-object v0
.end method

.method public socket()Ljava/net/DatagramSocket;
    .registers 3

    .prologue
    .line 200
    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 201
    :try_start_3
    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    if-nez v0, :cond_d

    .line 202
    invoke-static {p0}, Lsun/nio/ch/DatagramSocketAdaptor;->create(Lsun/nio/ch/DatagramChannelImpl;)Ljava/net/DatagramSocket;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    .line 203
    :cond_d
    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_11

    monitor-exit v1

    return-object v0

    .line 200
    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final supportedOptions()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/net/SocketOption",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 355
    sget-object v0, Lsun/nio/ch/DatagramChannelImpl$DefaultOptionsHolder;->defaultOptions:Ljava/util/Set;

    return-object v0
.end method

.method public translateAndSetInterestOps(ILsun/nio/ch/SelectionKeyImpl;)V
    .registers 5
    .param p1, "ops"    # I
    .param p2, "sk"    # Lsun/nio/ch/SelectionKeyImpl;

    .prologue
    .line 1171
    const/4 v0, 0x0

    .line 1173
    .local v0, "newOps":I
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_9

    .line 1174
    sget-short v1, Lsun/nio/ch/Net;->POLLIN:S

    or-int/lit8 v0, v1, 0x0

    .line 1175
    :cond_9
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_10

    .line 1176
    sget-short v1, Lsun/nio/ch/Net;->POLLOUT:S

    or-int/2addr v0, v1

    .line 1177
    :cond_10
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_17

    .line 1178
    sget-short v1, Lsun/nio/ch/Net;->POLLIN:S

    or-int/2addr v0, v1

    .line 1179
    :cond_17
    iget-object v1, p2, Lsun/nio/ch/SelectionKeyImpl;->selector:Lsun/nio/ch/SelectorImpl;

    invoke-virtual {v1, p2, v0}, Lsun/nio/ch/SelectorImpl;->putEventOps(Lsun/nio/ch/SelectionKeyImpl;I)V

    .line 1180
    return-void
.end method

.method public translateAndSetReadyOps(ILsun/nio/ch/SelectionKeyImpl;)Z
    .registers 4
    .param p1, "ops"    # I
    .param p2, "sk"    # Lsun/nio/ch/SelectionKeyImpl;

    .prologue
    .line 1142
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lsun/nio/ch/DatagramChannelImpl;->translateReadyOps(IILsun/nio/ch/SelectionKeyImpl;)Z

    move-result v0

    return v0
.end method

.method public translateAndUpdateReadyOps(ILsun/nio/ch/SelectionKeyImpl;)Z
    .registers 4
    .param p1, "ops"    # I
    .param p2, "sk"    # Lsun/nio/ch/SelectionKeyImpl;

    .prologue
    .line 1138
    invoke-virtual {p2}, Lsun/nio/ch/SelectionKeyImpl;->nioReadyOps()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lsun/nio/ch/DatagramChannelImpl;->translateReadyOps(IILsun/nio/ch/SelectionKeyImpl;)Z

    move-result v0

    return v0
.end method

.method public translateReadyOps(IILsun/nio/ch/SelectionKeyImpl;)Z
    .registers 11
    .param p1, "ops"    # I
    .param p2, "initialOps"    # I
    .param p3, "sk"    # Lsun/nio/ch/SelectionKeyImpl;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1108
    invoke-virtual {p3}, Lsun/nio/ch/SelectionKeyImpl;->nioInterestOps()I

    move-result v0

    .line 1109
    .local v0, "intOps":I
    invoke-virtual {p3}, Lsun/nio/ch/SelectionKeyImpl;->nioReadyOps()I

    move-result v2

    .line 1110
    .local v2, "oldOps":I
    move v1, p2

    .line 1112
    .local v1, "newOps":I
    sget-short v5, Lsun/nio/ch/Net;->POLLNVAL:S

    and-int/2addr v5, p1

    if-eqz v5, :cond_11

    .line 1116
    return v4

    .line 1119
    :cond_11
    sget-short v5, Lsun/nio/ch/Net;->POLLERR:S

    sget-short v6, Lsun/nio/ch/Net;->POLLHUP:S

    or-int/2addr v5, v6

    and-int/2addr v5, p1

    if-eqz v5, :cond_24

    .line 1120
    move v1, v0

    .line 1121
    invoke-virtual {p3, v0}, Lsun/nio/ch/SelectionKeyImpl;->nioReadyOps(I)V

    .line 1122
    not-int v5, v2

    and-int/2addr v5, v0

    if-eqz v5, :cond_22

    :goto_21
    return v3

    :cond_22
    move v3, v4

    goto :goto_21

    .line 1125
    :cond_24
    sget-short v5, Lsun/nio/ch/Net;->POLLIN:S

    and-int/2addr v5, p1

    if-eqz v5, :cond_2f

    .line 1126
    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_2f

    .line 1127
    or-int/lit8 v1, p2, 0x1

    .line 1129
    :cond_2f
    sget-short v5, Lsun/nio/ch/Net;->POLLOUT:S

    and-int/2addr v5, p1

    if-eqz v5, :cond_3a

    .line 1130
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_3a

    .line 1131
    or-int/lit8 v1, v1, 0x4

    .line 1133
    :cond_3a
    invoke-virtual {p3, v1}, Lsun/nio/ch/SelectionKeyImpl;->nioReadyOps(I)V

    .line 1134
    not-int v5, v2

    and-int/2addr v5, v1

    if-eqz v5, :cond_42

    :goto_41
    return v3

    :cond_42
    move v3, v4

    goto :goto_41
.end method

.method unblock(Lsun/nio/ch/MembershipKeyImpl;Ljava/net/InetAddress;)V
    .registers 12
    .param p1, "key"    # Lsun/nio/ch/MembershipKeyImpl;
    .param p2, "source"    # Ljava/net/InetAddress;

    .prologue
    .line 1027
    sget-boolean v4, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    if-nez v4, :cond_10

    invoke-virtual {p1}, Lsun/nio/ch/MembershipKeyImpl;->channel()Ljava/nio/channels/MulticastChannel;

    move-result-object v4

    if-eq v4, p0, :cond_10

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1028
    :cond_10
    sget-boolean v4, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    if-nez v4, :cond_20

    invoke-virtual {p1}, Lsun/nio/ch/MembershipKeyImpl;->sourceAddress()Ljava/net/InetAddress;

    move-result-object v4

    if-eqz v4, :cond_20

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1030
    :cond_20
    iget-object v5, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1031
    :try_start_23
    invoke-virtual {p1}, Lsun/nio/ch/MembershipKeyImpl;->isValid()Z

    move-result v4

    if-nez v4, :cond_35

    .line 1032
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "key is no longer valid"

    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_32
    .catchall {:try_start_23 .. :try_end_32} :catchall_32

    .line 1030
    :catchall_32
    move-exception v4

    monitor-exit v5

    throw v4

    .line 1035
    :cond_35
    :try_start_35
    instance-of v4, p1, Lsun/nio/ch/MembershipKeyImpl$Type6;

    if-eqz v4, :cond_50

    .line 1037
    move-object v0, p1

    check-cast v0, Lsun/nio/ch/MembershipKeyImpl$Type6;

    move-object v3, v0

    .line 1038
    .local v3, "key6":Lsun/nio/ch/MembershipKeyImpl$Type6;
    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v3}, Lsun/nio/ch/MembershipKeyImpl$Type6;->groupAddress()[B

    move-result-object v6

    invoke-virtual {v3}, Lsun/nio/ch/MembershipKeyImpl$Type6;->index()I

    move-result v7

    .line 1039
    invoke-static {p2}, Lsun/nio/ch/Net;->inet6AsByteArray(Ljava/net/InetAddress;)[B

    move-result-object v8

    .line 1038
    invoke-static {v4, v6, v7, v8}, Lsun/nio/ch/Net;->unblock6(Ljava/io/FileDescriptor;[BI[B)V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_4e} :catch_66
    .catchall {:try_start_35 .. :try_end_4e} :catchall_32

    .end local v3    # "key6":Lsun/nio/ch/MembershipKeyImpl$Type6;
    :goto_4e
    monitor-exit v5

    .line 1051
    return-void

    .line 1042
    :cond_50
    :try_start_50
    move-object v0, p1

    check-cast v0, Lsun/nio/ch/MembershipKeyImpl$Type4;

    move-object v2, v0

    .line 1043
    .local v2, "key4":Lsun/nio/ch/MembershipKeyImpl$Type4;
    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v2}, Lsun/nio/ch/MembershipKeyImpl$Type4;->groupAddress()I

    move-result v6

    invoke-virtual {v2}, Lsun/nio/ch/MembershipKeyImpl$Type4;->interfaceAddress()I

    move-result v7

    .line 1044
    invoke-static {p2}, Lsun/nio/ch/Net;->inet4AsInt(Ljava/net/InetAddress;)I

    move-result v8

    .line 1043
    invoke-static {v4, v6, v7, v8}, Lsun/nio/ch/Net;->unblock4(Ljava/io/FileDescriptor;III)V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_65} :catch_66
    .catchall {:try_start_50 .. :try_end_65} :catchall_32

    goto :goto_4e

    .line 1046
    .end local v2    # "key4":Lsun/nio/ch/MembershipKeyImpl$Type4;
    :catch_66
    move-exception v1

    .line 1048
    .local v1, "ioe":Ljava/io/IOException;
    :try_start_67
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4
    :try_end_6d
    .catchall {:try_start_67 .. :try_end_6d} :catchall_32
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .registers 11
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 638
    if-nez p1, :cond_b

    .line 639
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 640
    :cond_b
    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v4

    .line 641
    :try_start_e
    iget-object v5, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_23

    .line 642
    :try_start_11
    invoke-direct {p0}, Lsun/nio/ch/DatagramChannelImpl;->ensureOpen()V

    .line 643
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isConnected()Z

    move-result v1

    if-nez v1, :cond_26

    .line 644
    new-instance v1, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {v1}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    throw v1
    :try_end_20
    .catchall {:try_start_11 .. :try_end_20} :catchall_20

    .line 641
    :catchall_20
    move-exception v1

    :try_start_21
    monitor-exit v5

    throw v1
    :try_end_23
    .catchall {:try_start_21 .. :try_end_23} :catchall_23

    .line 640
    :catchall_23
    move-exception v1

    monitor-exit v4

    throw v1

    :cond_26
    :try_start_26
    monitor-exit v5
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_23

    .line 646
    const/4 v0, 0x0

    .line 648
    .local v0, "n":I
    :try_start_28
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->begin()V

    .line 649
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z
    :try_end_2e
    .catchall {:try_start_28 .. :try_end_2e} :catchall_87

    move-result v1

    if-nez v1, :cond_4b

    .line 657
    const-wide/16 v6, 0x0

    :try_start_33
    iput-wide v6, p0, Lsun/nio/ch/DatagramChannelImpl;->writerThread:J

    .line 658
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    .line 659
    sget-boolean v1, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    if-nez v1, :cond_49

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v1

    if-nez v1, :cond_49

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_49
    .catchall {:try_start_33 .. :try_end_49} :catchall_23

    :cond_49
    monitor-exit v4

    .line 650
    return v3

    .line 651
    :cond_4b
    :try_start_4b
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    move-result-wide v6

    iput-wide v6, p0, Lsun/nio/ch/DatagramChannelImpl;->writerThread:J

    .line 653
    :cond_51
    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    const-wide/16 v6, -0x1

    sget-object v5, Lsun/nio/ch/DatagramChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    invoke-static {v1, p1, v6, v7, v5}, Lsun/nio/ch/IOUtil;->write(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I

    move-result v0

    .line 654
    const/4 v1, -0x3

    if-ne v0, v1, :cond_64

    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z

    move-result v1

    if-nez v1, :cond_51

    .line 655
    :cond_64
    invoke-static {v0}, Lsun/nio/ch/IOStatus;->normalize(I)I
    :try_end_67
    .catchall {:try_start_4b .. :try_end_67} :catchall_87

    move-result v1

    .line 657
    const-wide/16 v6, 0x0

    :try_start_6a
    iput-wide v6, p0, Lsun/nio/ch/DatagramChannelImpl;->writerThread:J

    .line 658
    if-gtz v0, :cond_70

    if-ne v0, v8, :cond_83

    :cond_70
    :goto_70
    invoke-virtual {p0, v2}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    .line 659
    sget-boolean v2, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_85

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v2

    if-nez v2, :cond_85

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_83
    .catchall {:try_start_6a .. :try_end_83} :catchall_23

    :cond_83
    move v2, v3

    .line 658
    goto :goto_70

    :cond_85
    monitor-exit v4

    .line 655
    return v1

    .line 656
    :catchall_87
    move-exception v1

    .line 657
    const-wide/16 v6, 0x0

    :try_start_8a
    iput-wide v6, p0, Lsun/nio/ch/DatagramChannelImpl;->writerThread:J

    .line 658
    if-gtz v0, :cond_90

    if-ne v0, v8, :cond_a3

    :cond_90
    :goto_90
    invoke-virtual {p0, v2}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    .line 659
    sget-boolean v2, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_a5

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v2

    if-nez v2, :cond_a5

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_a3
    move v2, v3

    .line 658
    goto :goto_90

    .line 656
    :cond_a5
    throw v1
    :try_end_a6
    .catchall {:try_start_8a .. :try_end_a6} :catchall_23
.end method

.method public write([Ljava/nio/ByteBuffer;II)J
    .registers 12
    .param p1, "srcs"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 667
    if-ltz p2, :cond_4

    if-gez p3, :cond_a

    .line 668
    :cond_4
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 667
    :cond_a
    array-length v2, p1

    sub-int/2addr v2, p3

    if-gt p2, v2, :cond_4

    .line 669
    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v4

    .line 670
    :try_start_11
    iget-object v3, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_26

    .line 671
    :try_start_14
    invoke-direct {p0}, Lsun/nio/ch/DatagramChannelImpl;->ensureOpen()V

    .line 672
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isConnected()Z

    move-result v2

    if-nez v2, :cond_29

    .line 673
    new-instance v2, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {v2}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    throw v2
    :try_end_23
    .catchall {:try_start_14 .. :try_end_23} :catchall_23

    .line 670
    :catchall_23
    move-exception v2

    :try_start_24
    monitor-exit v3

    throw v2
    :try_end_26
    .catchall {:try_start_24 .. :try_end_26} :catchall_26

    .line 669
    :catchall_26
    move-exception v2

    monitor-exit v4

    throw v2

    :cond_29
    :try_start_29
    monitor-exit v3
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_26

    .line 675
    const-wide/16 v0, 0x0

    .line 677
    .local v0, "n":J
    :try_start_2c
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->begin()V

    .line 678
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_97

    move-result v2

    if-nez v2, :cond_51

    .line 686
    const-wide/16 v2, 0x0

    :try_start_37
    iput-wide v2, p0, Lsun/nio/ch/DatagramChannelImpl;->writerThread:J

    .line 687
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    .line 688
    sget-boolean v2, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_4d

    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    move-result v2

    if-nez v2, :cond_4d

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_4d
    .catchall {:try_start_37 .. :try_end_4d} :catchall_26

    .line 679
    :cond_4d
    const-wide/16 v2, 0x0

    monitor-exit v4

    return-wide v2

    .line 680
    :cond_51
    :try_start_51
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    move-result-wide v2

    iput-wide v2, p0, Lsun/nio/ch/DatagramChannelImpl;->writerThread:J

    .line 682
    :cond_57
    iget-object v2, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    sget-object v3, Lsun/nio/ch/DatagramChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    invoke-static {v2, p1, p2, p3, v3}, Lsun/nio/ch/IOUtil;->write(Ljava/io/FileDescriptor;[Ljava/nio/ByteBuffer;IILsun/nio/ch/NativeDispatcher;)J

    move-result-wide v0

    .line 683
    const-wide/16 v2, -0x3

    cmp-long v2, v0, v2

    if-nez v2, :cond_6b

    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z

    move-result v2

    if-nez v2, :cond_57

    .line 684
    :cond_6b
    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->normalize(J)J
    :try_end_6e
    .catchall {:try_start_51 .. :try_end_6e} :catchall_97

    move-result-wide v6

    .line 686
    const-wide/16 v2, 0x0

    :try_start_71
    iput-wide v2, p0, Lsun/nio/ch/DatagramChannelImpl;->writerThread:J

    .line 687
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_7f

    const-wide/16 v2, -0x2

    cmp-long v2, v0, v2

    if-nez v2, :cond_93

    :cond_7f
    const/4 v2, 0x1

    :goto_80
    invoke-virtual {p0, v2}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    .line 688
    sget-boolean v2, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_95

    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    move-result v2

    if-nez v2, :cond_95

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_93
    .catchall {:try_start_71 .. :try_end_93} :catchall_26

    .line 687
    :cond_93
    const/4 v2, 0x0

    goto :goto_80

    :cond_95
    monitor-exit v4

    .line 684
    return-wide v6

    .line 685
    :catchall_97
    move-exception v2

    .line 686
    const-wide/16 v6, 0x0

    :try_start_9a
    iput-wide v6, p0, Lsun/nio/ch/DatagramChannelImpl;->writerThread:J

    .line 687
    const-wide/16 v6, 0x0

    cmp-long v3, v0, v6

    if-gtz v3, :cond_a8

    const-wide/16 v6, -0x2

    cmp-long v3, v0, v6

    if-nez v3, :cond_bc

    :cond_a8
    const/4 v3, 0x1

    :goto_a9
    invoke-virtual {p0, v3}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    .line 688
    sget-boolean v3, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    if-nez v3, :cond_be

    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    move-result v3

    if-nez v3, :cond_be

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 687
    :cond_bc
    const/4 v3, 0x0

    goto :goto_a9

    .line 685
    :cond_be
    throw v2
    :try_end_bf
    .catchall {:try_start_9a .. :try_end_bf} :catchall_26
.end method
