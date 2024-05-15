.class public final Ljava/net/StandardSocketOptions;
.super Ljava/lang/Object;
.source "StandardSocketOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/net/StandardSocketOptions$StdSocketOption;
    }
.end annotation


# static fields
.field public static final whitelist core-platform-api test-api IP_MULTICAST_IF:Ljava/net/SocketOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/net/SocketOption<",
            "Ljava/net/NetworkInterface;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist core-platform-api test-api IP_MULTICAST_LOOP:Ljava/net/SocketOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/net/SocketOption<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist core-platform-api test-api IP_MULTICAST_TTL:Ljava/net/SocketOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/net/SocketOption<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist core-platform-api test-api IP_TOS:Ljava/net/SocketOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/net/SocketOption<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist core-platform-api test-api SO_BROADCAST:Ljava/net/SocketOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/net/SocketOption<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist core-platform-api test-api SO_KEEPALIVE:Ljava/net/SocketOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/net/SocketOption<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist core-platform-api test-api SO_LINGER:Ljava/net/SocketOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/net/SocketOption<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist core-platform-api test-api SO_RCVBUF:Ljava/net/SocketOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/net/SocketOption<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist core-platform-api test-api SO_REUSEADDR:Ljava/net/SocketOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/net/SocketOption<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist core-platform-api test-api SO_SNDBUF:Ljava/net/SocketOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/net/SocketOption<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist core-platform-api test-api TCP_NODELAY:Ljava/net/SocketOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/net/SocketOption<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 64
    new-instance v0, Ljava/net/StandardSocketOptions$StdSocketOption;

    const-class v1, Ljava/lang/Boolean;

    const-string v2, "SO_BROADCAST"

    invoke-direct {v0, v2, v1}, Ljava/net/StandardSocketOptions$StdSocketOption;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Ljava/net/StandardSocketOptions;->SO_BROADCAST:Ljava/net/SocketOption;

    .line 84
    new-instance v0, Ljava/net/StandardSocketOptions$StdSocketOption;

    const-class v1, Ljava/lang/Boolean;

    const-string v2, "SO_KEEPALIVE"

    invoke-direct {v0, v2, v1}, Ljava/net/StandardSocketOptions$StdSocketOption;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Ljava/net/StandardSocketOptions;->SO_KEEPALIVE:Ljava/net/SocketOption;

    .line 115
    new-instance v0, Ljava/net/StandardSocketOptions$StdSocketOption;

    const-class v1, Ljava/lang/Integer;

    const-string v2, "SO_SNDBUF"

    invoke-direct {v0, v2, v1}, Ljava/net/StandardSocketOptions$StdSocketOption;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Ljava/net/StandardSocketOptions;->SO_SNDBUF:Ljava/net/SocketOption;

    .line 155
    new-instance v0, Ljava/net/StandardSocketOptions$StdSocketOption;

    const-class v1, Ljava/lang/Integer;

    const-string v2, "SO_RCVBUF"

    invoke-direct {v0, v2, v1}, Ljava/net/StandardSocketOptions$StdSocketOption;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Ljava/net/StandardSocketOptions;->SO_RCVBUF:Ljava/net/SocketOption;

    .line 186
    new-instance v0, Ljava/net/StandardSocketOptions$StdSocketOption;

    const-class v1, Ljava/lang/Boolean;

    const-string v2, "SO_REUSEADDR"

    invoke-direct {v0, v2, v1}, Ljava/net/StandardSocketOptions$StdSocketOption;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    .line 218
    new-instance v0, Ljava/net/StandardSocketOptions$StdSocketOption;

    const-class v1, Ljava/lang/Integer;

    const-string v2, "SO_LINGER"

    invoke-direct {v0, v2, v1}, Ljava/net/StandardSocketOptions$StdSocketOption;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Ljava/net/StandardSocketOptions;->SO_LINGER:Ljava/net/SocketOption;

    .line 250
    new-instance v0, Ljava/net/StandardSocketOptions$StdSocketOption;

    const-class v1, Ljava/lang/Integer;

    const-string v2, "IP_TOS"

    invoke-direct {v0, v2, v1}, Ljava/net/StandardSocketOptions$StdSocketOption;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    .line 273
    new-instance v0, Ljava/net/StandardSocketOptions$StdSocketOption;

    const-class v1, Ljava/net/NetworkInterface;

    const-string v2, "IP_MULTICAST_IF"

    invoke-direct {v0, v2, v1}, Ljava/net/StandardSocketOptions$StdSocketOption;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Ljava/net/StandardSocketOptions;->IP_MULTICAST_IF:Ljava/net/SocketOption;

    .line 300
    new-instance v0, Ljava/net/StandardSocketOptions$StdSocketOption;

    const-class v1, Ljava/lang/Integer;

    const-string v2, "IP_MULTICAST_TTL"

    invoke-direct {v0, v2, v1}, Ljava/net/StandardSocketOptions$StdSocketOption;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Ljava/net/StandardSocketOptions;->IP_MULTICAST_TTL:Ljava/net/SocketOption;

    .line 325
    new-instance v0, Ljava/net/StandardSocketOptions$StdSocketOption;

    const-class v1, Ljava/lang/Boolean;

    const-string v2, "IP_MULTICAST_LOOP"

    invoke-direct {v0, v2, v1}, Ljava/net/StandardSocketOptions$StdSocketOption;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Ljava/net/StandardSocketOptions;->IP_MULTICAST_LOOP:Ljava/net/SocketOption;

    .line 352
    new-instance v0, Ljava/net/StandardSocketOptions$StdSocketOption;

    const-class v1, Ljava/lang/Boolean;

    const-string v2, "TCP_NODELAY"

    invoke-direct {v0, v2, v1}, Ljava/net/StandardSocketOptions$StdSocketOption;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Ljava/net/StandardSocketOptions;->TCP_NODELAY:Ljava/net/SocketOption;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
