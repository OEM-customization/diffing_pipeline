.class Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
.super Lcom/android/org/conscrypt/OpenSSLSocketImpl;
.source "ConscryptFileDescriptorSocket.java"

# interfaces
.implements Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;
.implements Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;
.implements Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;,
        Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;
    }
.end annotation


# static fields
.field private static final blacklist DBG_STATE:Z = false


# instance fields
.field private final blacklist activeSession:Lcom/android/org/conscrypt/ActiveSession;

.field private blacklist channelIdPrivateKey:Lcom/android/org/conscrypt/OpenSSLKey;

.field private blacklist closedSession:Lcom/android/org/conscrypt/SessionSnapshot;

.field private final blacklist externalSession:Ljavax/net/ssl/SSLSession;

.field private final blacklist guard:Ljava/lang/Object;

.field private blacklist handshakeTimeoutMilliseconds:I

.field private blacklist is:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;

.field private blacklist os:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;

.field private final blacklist ssl:Lcom/android/org/conscrypt/NativeSsl;

.field private final blacklist sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

.field private blacklist state:I

.field private blacklist writeTimeoutMilliseconds:I


# direct methods
.method constructor blacklist <init>(Lcom/android/org/conscrypt/SSLParametersImpl;)V
    .registers 5
    .param p1, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    .line 94
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->closeGuardGet()Ldalvik/system/CloseGuard;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->guard:Ljava/lang/Object;

    .line 110
    new-instance v1, Lcom/android/org/conscrypt/ExternalSession;

    new-instance v2, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$1;

    invoke-direct {v2, p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$1;-><init>(Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)V

    invoke-direct {v1, v2}, Lcom/android/org/conscrypt/ExternalSession;-><init>(Lcom/android/org/conscrypt/ExternalSession$Provider;)V

    .line 111
    invoke-static {v1}, Lcom/android/org/conscrypt/Platform;->wrapSSLSession(Lcom/android/org/conscrypt/ExternalSession;)Ljavax/net/ssl/SSLSession;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->externalSession:Ljavax/net/ssl/SSLSession;

    .line 118
    iput v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->writeTimeoutMilliseconds:I

    .line 119
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->handshakeTimeoutMilliseconds:I

    .line 124
    iput-object p1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 125
    invoke-static {p1, p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->newSsl(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)Lcom/android/org/conscrypt/NativeSsl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    .line 126
    new-instance v1, Lcom/android/org/conscrypt/ActiveSession;

    invoke-virtual {p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->getSessionContext()Lcom/android/org/conscrypt/AbstractSessionContext;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/android/org/conscrypt/ActiveSession;-><init>(Lcom/android/org/conscrypt/NativeSsl;Lcom/android/org/conscrypt/AbstractSessionContext;)V

    iput-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->activeSession:Lcom/android/org/conscrypt/ActiveSession;

    .line 127
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;ILcom/android/org/conscrypt/SSLParametersImpl;)V
    .registers 7
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;-><init>(Ljava/lang/String;I)V

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    .line 94
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->closeGuardGet()Ldalvik/system/CloseGuard;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->guard:Ljava/lang/Object;

    .line 110
    new-instance v1, Lcom/android/org/conscrypt/ExternalSession;

    new-instance v2, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$1;

    invoke-direct {v2, p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$1;-><init>(Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)V

    invoke-direct {v1, v2}, Lcom/android/org/conscrypt/ExternalSession;-><init>(Lcom/android/org/conscrypt/ExternalSession$Provider;)V

    .line 111
    invoke-static {v1}, Lcom/android/org/conscrypt/Platform;->wrapSSLSession(Lcom/android/org/conscrypt/ExternalSession;)Ljavax/net/ssl/SSLSession;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->externalSession:Ljavax/net/ssl/SSLSession;

    .line 118
    iput v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->writeTimeoutMilliseconds:I

    .line 119
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->handshakeTimeoutMilliseconds:I

    .line 132
    iput-object p3, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 133
    invoke-static {p3, p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->newSsl(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)Lcom/android/org/conscrypt/NativeSsl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    .line 134
    new-instance v1, Lcom/android/org/conscrypt/ActiveSession;

    invoke-virtual {p3}, Lcom/android/org/conscrypt/SSLParametersImpl;->getSessionContext()Lcom/android/org/conscrypt/AbstractSessionContext;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/android/org/conscrypt/ActiveSession;-><init>(Lcom/android/org/conscrypt/NativeSsl;Lcom/android/org/conscrypt/AbstractSessionContext;)V

    iput-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->activeSession:Lcom/android/org/conscrypt/ActiveSession;

    .line 135
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;ILjava/net/InetAddress;ILcom/android/org/conscrypt/SSLParametersImpl;)V
    .registers 9
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "clientAddress"    # Ljava/net/InetAddress;
    .param p4, "clientPort"    # I
    .param p5, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;-><init>(Ljava/lang/String;ILjava/net/InetAddress;I)V

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    .line 94
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->closeGuardGet()Ldalvik/system/CloseGuard;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->guard:Ljava/lang/Object;

    .line 110
    new-instance v1, Lcom/android/org/conscrypt/ExternalSession;

    new-instance v2, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$1;

    invoke-direct {v2, p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$1;-><init>(Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)V

    invoke-direct {v1, v2}, Lcom/android/org/conscrypt/ExternalSession;-><init>(Lcom/android/org/conscrypt/ExternalSession$Provider;)V

    .line 111
    invoke-static {v1}, Lcom/android/org/conscrypt/Platform;->wrapSSLSession(Lcom/android/org/conscrypt/ExternalSession;)Ljavax/net/ssl/SSLSession;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->externalSession:Ljavax/net/ssl/SSLSession;

    .line 118
    iput v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->writeTimeoutMilliseconds:I

    .line 119
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->handshakeTimeoutMilliseconds:I

    .line 148
    iput-object p5, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 149
    invoke-static {p5, p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->newSsl(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)Lcom/android/org/conscrypt/NativeSsl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    .line 150
    new-instance v1, Lcom/android/org/conscrypt/ActiveSession;

    invoke-virtual {p5}, Lcom/android/org/conscrypt/SSLParametersImpl;->getSessionContext()Lcom/android/org/conscrypt/AbstractSessionContext;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/android/org/conscrypt/ActiveSession;-><init>(Lcom/android/org/conscrypt/NativeSsl;Lcom/android/org/conscrypt/AbstractSessionContext;)V

    iput-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->activeSession:Lcom/android/org/conscrypt/ActiveSession;

    .line 151
    return-void
.end method

.method constructor blacklist <init>(Ljava/net/InetAddress;ILcom/android/org/conscrypt/SSLParametersImpl;)V
    .registers 7
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;-><init>(Ljava/net/InetAddress;I)V

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    .line 94
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->closeGuardGet()Ldalvik/system/CloseGuard;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->guard:Ljava/lang/Object;

    .line 110
    new-instance v1, Lcom/android/org/conscrypt/ExternalSession;

    new-instance v2, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$1;

    invoke-direct {v2, p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$1;-><init>(Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)V

    invoke-direct {v1, v2}, Lcom/android/org/conscrypt/ExternalSession;-><init>(Lcom/android/org/conscrypt/ExternalSession$Provider;)V

    .line 111
    invoke-static {v1}, Lcom/android/org/conscrypt/Platform;->wrapSSLSession(Lcom/android/org/conscrypt/ExternalSession;)Ljavax/net/ssl/SSLSession;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->externalSession:Ljavax/net/ssl/SSLSession;

    .line 118
    iput v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->writeTimeoutMilliseconds:I

    .line 119
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->handshakeTimeoutMilliseconds:I

    .line 140
    iput-object p3, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 141
    invoke-static {p3, p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->newSsl(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)Lcom/android/org/conscrypt/NativeSsl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    .line 142
    new-instance v1, Lcom/android/org/conscrypt/ActiveSession;

    invoke-virtual {p3}, Lcom/android/org/conscrypt/SSLParametersImpl;->getSessionContext()Lcom/android/org/conscrypt/AbstractSessionContext;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/android/org/conscrypt/ActiveSession;-><init>(Lcom/android/org/conscrypt/NativeSsl;Lcom/android/org/conscrypt/AbstractSessionContext;)V

    iput-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->activeSession:Lcom/android/org/conscrypt/ActiveSession;

    .line 143
    return-void
.end method

.method constructor blacklist <init>(Ljava/net/InetAddress;ILjava/net/InetAddress;ILcom/android/org/conscrypt/SSLParametersImpl;)V
    .registers 9
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "clientAddress"    # Ljava/net/InetAddress;
    .param p4, "clientPort"    # I
    .param p5, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    .line 94
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->closeGuardGet()Ldalvik/system/CloseGuard;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->guard:Ljava/lang/Object;

    .line 110
    new-instance v1, Lcom/android/org/conscrypt/ExternalSession;

    new-instance v2, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$1;

    invoke-direct {v2, p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$1;-><init>(Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)V

    invoke-direct {v1, v2}, Lcom/android/org/conscrypt/ExternalSession;-><init>(Lcom/android/org/conscrypt/ExternalSession$Provider;)V

    .line 111
    invoke-static {v1}, Lcom/android/org/conscrypt/Platform;->wrapSSLSession(Lcom/android/org/conscrypt/ExternalSession;)Ljavax/net/ssl/SSLSession;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->externalSession:Ljavax/net/ssl/SSLSession;

    .line 118
    iput v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->writeTimeoutMilliseconds:I

    .line 119
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->handshakeTimeoutMilliseconds:I

    .line 156
    iput-object p5, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 157
    invoke-static {p5, p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->newSsl(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)Lcom/android/org/conscrypt/NativeSsl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    .line 158
    new-instance v1, Lcom/android/org/conscrypt/ActiveSession;

    invoke-virtual {p5}, Lcom/android/org/conscrypt/SSLParametersImpl;->getSessionContext()Lcom/android/org/conscrypt/AbstractSessionContext;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/android/org/conscrypt/ActiveSession;-><init>(Lcom/android/org/conscrypt/NativeSsl;Lcom/android/org/conscrypt/AbstractSessionContext;)V

    iput-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->activeSession:Lcom/android/org/conscrypt/ActiveSession;

    .line 159
    return-void
.end method

.method constructor blacklist <init>(Ljava/net/Socket;Ljava/lang/String;IZLcom/android/org/conscrypt/SSLParametersImpl;)V
    .registers 9
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "hostname"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "autoClose"    # Z
    .param p5, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;-><init>(Ljava/net/Socket;Ljava/lang/String;IZ)V

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    .line 94
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->closeGuardGet()Ldalvik/system/CloseGuard;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->guard:Ljava/lang/Object;

    .line 110
    new-instance v1, Lcom/android/org/conscrypt/ExternalSession;

    new-instance v2, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$1;

    invoke-direct {v2, p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$1;-><init>(Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)V

    invoke-direct {v1, v2}, Lcom/android/org/conscrypt/ExternalSession;-><init>(Lcom/android/org/conscrypt/ExternalSession$Provider;)V

    .line 111
    invoke-static {v1}, Lcom/android/org/conscrypt/Platform;->wrapSSLSession(Lcom/android/org/conscrypt/ExternalSession;)Ljavax/net/ssl/SSLSession;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->externalSession:Ljavax/net/ssl/SSLSession;

    .line 118
    iput v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->writeTimeoutMilliseconds:I

    .line 119
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->handshakeTimeoutMilliseconds:I

    .line 164
    iput-object p5, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 165
    invoke-static {p5, p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->newSsl(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)Lcom/android/org/conscrypt/NativeSsl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    .line 166
    new-instance v1, Lcom/android/org/conscrypt/ActiveSession;

    invoke-virtual {p5}, Lcom/android/org/conscrypt/SSLParametersImpl;->getSessionContext()Lcom/android/org/conscrypt/AbstractSessionContext;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/android/org/conscrypt/ActiveSession;-><init>(Lcom/android/org/conscrypt/NativeSsl;Lcom/android/org/conscrypt/AbstractSessionContext;)V

    iput-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->activeSession:Lcom/android/org/conscrypt/ActiveSession;

    .line 167
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)Lcom/android/org/conscrypt/ConscryptSession;
    .registers 2
    .param p0, "x0"    # Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    .line 62
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->provideSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$100(Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)Lcom/android/org/conscrypt/NativeSsl;
    .registers 2
    .param p0, "x0"    # Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    .line 62
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    return-object v0
.end method

.method static synthetic blacklist access$200(Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    .line 62
    iget v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    return v0
.end method

.method static synthetic blacklist access$300(Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    .line 62
    iget v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->writeTimeoutMilliseconds:I

    return v0
.end method

.method static synthetic blacklist access$400(Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)Lcom/android/org/conscrypt/ConscryptSession;
    .registers 2
    .param p0, "x0"    # Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    .line 62
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->provideHandshakeSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v0

    return-object v0
.end method

.method private blacklist assertReadableOrWriteableState()V
    .registers 4

    .line 475
    iget v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_22

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    goto :goto_22

    .line 479
    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 476
    :cond_22
    :goto_22
    return-void
.end method

.method private blacklist clientSessionContext()Lcom/android/org/conscrypt/ClientSessionContext;
    .registers 2

    .line 1191
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getClientSessionContext()Lcom/android/org/conscrypt/ClientSessionContext;

    move-result-object v0

    return-object v0
.end method

.method private blacklist closeUnderlyingSocket()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1063
    invoke-super {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->close()V

    .line 1064
    return-void
.end method

.method private blacklist free()V
    .registers 2

    .line 1067
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/NativeSsl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1068
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/NativeSsl;->close()V

    .line 1069
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->guard:Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/org/conscrypt/Platform;->closeGuardClose(Ljava/lang/Object;)V

    .line 1071
    :cond_12
    return-void
.end method

.method private static blacklist newSsl(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)Lcom/android/org/conscrypt/NativeSsl;
    .registers 3
    .param p0, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .param p1, "engine"    # Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 171
    invoke-static {p0, p1, p1, p1}, Lcom/android/org/conscrypt/NativeSsl;->newInstance(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;)Lcom/android/org/conscrypt/NativeSsl;

    move-result-object v0

    return-object v0
.end method

.method private blacklist provideAfterHandshakeSession()Lcom/android/org/conscrypt/ConscryptSession;
    .registers 3

    .line 697
    iget v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_a

    invoke-static {}, Lcom/android/org/conscrypt/SSLNullSession;->getNullSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v0

    goto :goto_e

    .line 698
    :cond_a
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->provideSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v0

    .line 697
    :goto_e
    return-object v0
.end method

.method private blacklist provideHandshakeSession()Lcom/android/org/conscrypt/ConscryptSession;
    .registers 4

    .line 703
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 704
    :try_start_3
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_10

    iget v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_10

    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->activeSession:Lcom/android/org/conscrypt/ActiveSession;

    goto :goto_14

    .line 705
    :cond_10
    invoke-static {}, Lcom/android/org/conscrypt/SSLNullSession;->getNullSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v1

    :goto_14
    monitor-exit v0

    .line 704
    return-object v1

    .line 706
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method private blacklist provideSession()Lcom/android/org/conscrypt/ConscryptSession;
    .registers 5

    .line 668
    const/4 v0, 0x0

    .line 669
    .local v0, "handshakeCompleted":Z
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v1

    .line 670
    :try_start_4
    iget v2, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_17

    .line 671
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->closedSession:Lcom/android/org/conscrypt/SessionSnapshot;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->closedSession:Lcom/android/org/conscrypt/SessionSnapshot;

    goto :goto_15

    :cond_11
    invoke-static {}, Lcom/android/org/conscrypt/SSLNullSession;->getNullSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v2

    :goto_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_39

    return-object v2

    .line 675
    :cond_17
    :try_start_17
    iget v2, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    const/4 v3, 0x5

    if-lt v2, v3, :cond_1e

    const/4 v2, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v2, 0x0

    :goto_1f
    move v0, v2

    .line 676
    if-nez v0, :cond_2c

    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 677
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->waitForHandshake()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_2b} :catch_2d
    .catchall {:try_start_17 .. :try_end_2b} :catchall_39

    .line 678
    const/4 v0, 0x1

    .line 682
    :cond_2c
    goto :goto_2e

    .line 680
    :catch_2d
    move-exception v2

    .line 683
    :goto_2e
    :try_start_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_39

    .line 685
    if-nez v0, :cond_36

    .line 688
    invoke-static {}, Lcom/android/org/conscrypt/SSLNullSession;->getNullSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v1

    return-object v1

    .line 691
    :cond_36
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->activeSession:Lcom/android/org/conscrypt/ActiveSession;

    return-object v1

    .line 683
    :catchall_39
    move-exception v2

    :try_start_3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v2
.end method

.method private blacklist sessionContext()Lcom/android/org/conscrypt/AbstractSessionContext;
    .registers 2

    .line 1195
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getSessionContext()Lcom/android/org/conscrypt/AbstractSessionContext;

    move-result-object v0

    return-object v0
.end method

.method private blacklist shutdownAndFreeSslNative()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1047
    :try_start_0
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->blockGuardOnNetwork()V

    .line 1048
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->socket:Ljava/net/Socket;

    invoke-static {v1}, Lcom/android/org/conscrypt/Platform;->getFileDescriptor(Ljava/net/Socket;)Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/NativeSsl;->shutdown(Ljava/io/FileDescriptor;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_e} :catch_17
    .catchall {:try_start_0 .. :try_end_e} :catchall_f

    goto :goto_18

    .line 1057
    :catchall_f
    move-exception v0

    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->free()V

    .line 1058
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->closeUnderlyingSocket()V

    .line 1059
    throw v0

    .line 1049
    :catch_17
    move-exception v0

    .line 1057
    :goto_18
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->free()V

    .line 1058
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->closeUnderlyingSocket()V

    .line 1059
    nop

    .line 1060
    return-void
.end method

.method private blacklist transitionTo(I)V
    .registers 5
    .param p1, "newState"    # I

    .line 1199
    const/16 v0, 0x8

    if-eq p1, v0, :cond_5

    goto :goto_1d

    .line 1201
    :cond_5
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/NativeSsl;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1d

    iget v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1d

    if-ge v1, v0, :cond_1d

    .line 1202
    new-instance v0, Lcom/android/org/conscrypt/SessionSnapshot;

    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->activeSession:Lcom/android/org/conscrypt/ActiveSession;

    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/SessionSnapshot;-><init>(Lcom/android/org/conscrypt/ConscryptSession;)V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->closedSession:Lcom/android/org/conscrypt/SessionSnapshot;

    .line 1212
    :cond_1d
    :goto_1d
    iput p1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    .line 1213
    return-void
.end method

.method private blacklist waitForHandshake()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 483
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->startHandshake()V

    .line 485
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 486
    :goto_6
    :try_start_6
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    const/4 v2, 0x5

    const/16 v3, 0x8

    if-eq v1, v2, :cond_2c

    iget v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2c

    iget v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_3a

    if-eq v1, v3, :cond_2c

    .line 490
    :try_start_16
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_1b} :catch_1c
    .catchall {:try_start_16 .. :try_end_1b} :catchall_3a

    .line 494
    goto :goto_6

    .line 491
    :catch_1c
    move-exception v1

    .line 492
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_1d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 493
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Interrupted waiting for handshake"

    invoke-direct {v2, v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    throw v2

    .line 497
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    :cond_2c
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    if-eq v1, v3, :cond_32

    .line 500
    monitor-exit v0

    .line 501
    return-void

    .line 498
    :cond_32
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "Socket is closed"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    throw v1

    .line 500
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_1d .. :try_end_3c} :catchall_3a

    throw v1
.end method


# virtual methods
.method public final blacklist chooseClientAlias(Ljavax/net/ssl/X509KeyManager;[Ljavax/security/auth/x500/X500Principal;[Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "keyManager"    # Ljavax/net/ssl/X509KeyManager;
    .param p2, "issuers"    # [Ljavax/security/auth/x500/X500Principal;
    .param p3, "keyTypes"    # [Ljava/lang/String;

    .line 1187
    invoke-interface {p1, p3, p2, p0}, Ljavax/net/ssl/X509KeyManager;->chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist chooseClientPSKIdentity(Lcom/android/org/conscrypt/PSKKeyManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "keyManager"    # Lcom/android/org/conscrypt/PSKKeyManager;
    .param p2, "identityHint"    # Ljava/lang/String;

    .line 1170
    invoke-interface {p1, p2, p0}, Lcom/android/org/conscrypt/PSKKeyManager;->chooseClientKeyIdentity(Ljava/lang/String;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist chooseServerAlias(Ljavax/net/ssl/X509KeyManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "keyManager"    # Ljavax/net/ssl/X509KeyManager;
    .param p2, "keyType"    # Ljava/lang/String;

    .line 1181
    const/4 v0, 0x0

    invoke-interface {p1, p2, v0, p0}, Ljavax/net/ssl/X509KeyManager;->chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist chooseServerPSKIdentityHint(Lcom/android/org/conscrypt/PSKKeyManager;)Ljava/lang/String;
    .registers 3
    .param p1, "keyManager"    # Lcom/android/org/conscrypt/PSKKeyManager;

    .line 1164
    invoke-interface {p1, p0}, Lcom/android/org/conscrypt/PSKKeyManager;->chooseServerKeyIdentityHint(Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist clientCertificateRequested([B[I[[B)V
    .registers 5
    .param p1, "keyTypeBytes"    # [B
    .param p2, "signatureAlgs"    # [I
    .param p3, "asn1DerEncodedPrincipals"    # [[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 316
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/org/conscrypt/NativeSsl;->chooseClientCertificate([B[I[[B)V

    .line 317
    return-void
.end method

.method public final blacklist clientPSKKeyRequested(Ljava/lang/String;[B[B)I
    .registers 5
    .param p1, "identityHint"    # Ljava/lang/String;
    .param p2, "identity"    # [B
    .param p3, "key"    # [B

    .line 322
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/org/conscrypt/NativeSsl;->clientPSKKeyRequested(Ljava/lang/String;[B[B)I

    move-result v0

    return v0
.end method

.method public final whitelist core-platform-api test-api close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 983
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    if-nez v0, :cond_5

    .line 986
    return-void

    .line 989
    :cond_5
    monitor-enter v0

    .line 990
    :try_start_6
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_e

    .line 992
    monitor-exit v0

    return-void

    .line 995
    :cond_e
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    .line 996
    .local v1, "oldState":I
    invoke-direct {p0, v2}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->transitionTo(I)V

    .line 998
    if-nez v1, :cond_22

    .line 1002
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->free()V

    .line 1003
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->closeUnderlyingSocket()V

    .line 1005
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1006
    monitor-exit v0

    return-void

    .line 1009
    :cond_22
    const/4 v2, 0x5

    if-eq v1, v2, :cond_34

    const/4 v2, 0x4

    if-eq v1, v2, :cond_34

    .line 1014
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v2}, Lcom/android/org/conscrypt/NativeSsl;->interrupt()V

    .line 1016
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1017
    monitor-exit v0

    return-void

    .line 1020
    :cond_34
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1023
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->is:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;

    .line 1024
    .local v2, "sslInputStream":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;
    iget-object v3, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->os:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;

    move-object v1, v3

    .line 1025
    .local v1, "sslOutputStream":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_6 .. :try_end_3f} :catchall_56

    .line 1028
    if-nez v2, :cond_43

    if-eqz v1, :cond_48

    .line 1029
    :cond_43
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/NativeSsl;->interrupt()V

    .line 1035
    :cond_48
    if-eqz v2, :cond_4d

    .line 1036
    invoke-virtual {v2}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->awaitPendingOps()V

    .line 1038
    :cond_4d
    if-eqz v1, :cond_52

    .line 1039
    invoke-virtual {v1}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;->awaitPendingOps()V

    .line 1042
    :cond_52
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->shutdownAndFreeSslNative()V

    .line 1043
    return-void

    .line 1025
    .end local v1    # "sslOutputStream":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;
    .end local v2    # "sslInputStream":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;
    :catchall_56
    move-exception v1

    :try_start_57
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    throw v1
.end method

.method blacklist exportKeyingMaterial(Ljava/lang/String;[BI)[B
    .registers 7
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "context"    # [B
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 904
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 905
    :try_start_3
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_17

    iget v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_f

    goto :goto_17

    .line 908
    :cond_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_1a

    .line 909
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/org/conscrypt/NativeSsl;->exportKeyingMaterial(Ljava/lang/String;[BI)[B

    move-result-object v0

    return-object v0

    .line 906
    :cond_17
    :goto_17
    const/4 v1, 0x0

    :try_start_18
    monitor-exit v0

    return-object v1

    .line 908
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method protected final whitelist core-platform-api test-api finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1092
    :try_start_0
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->guard:Ljava/lang/Object;

    if-eqz v0, :cond_9

    .line 1093
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->guard:Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/org/conscrypt/Platform;->closeGuardWarnIfOpen(Ljava/lang/Object;)V

    .line 1095
    :cond_9
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    if-eqz v0, :cond_1a

    .line 1096
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_1f

    .line 1097
    const/16 v1, 0x8

    :try_start_12
    invoke-direct {p0, v1}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->transitionTo(I)V

    .line 1098
    monitor-exit v0

    goto :goto_1a

    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_17

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    :try_start_19
    throw v1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_1f

    .line 1101
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    :cond_1a
    :goto_1a
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1102
    nop

    .line 1103
    return-void

    .line 1101
    :catchall_1f
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1102
    throw v0
.end method

.method final blacklist getActiveSession()Ljavax/net/ssl/SSLSession;
    .registers 2

    .line 711
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->activeSession:Lcom/android/org/conscrypt/ActiveSession;

    return-object v0
.end method

.method public final whitelist core-platform-api test-api getApplicationProtocol()Ljava/lang/String;
    .registers 2

    .line 1137
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->provideAfterHandshakeSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/org/conscrypt/ConscryptSession;->getApplicationProtocol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final blacklist getApplicationProtocols()[Ljava/lang/String;
    .registers 2

    .line 1132
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getApplicationProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist getChannelId()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 835
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->getUseClientMode()Z

    move-result v0

    if-nez v0, :cond_21

    .line 839
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 840
    :try_start_9
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_16

    .line 844
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_1e

    .line 845
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/NativeSsl;->getTlsChannelId()[B

    move-result-object v0

    return-object v0

    .line 841
    :cond_16
    :try_start_16
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Channel ID is only available after handshake completes"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    throw v1

    .line 844
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_1e

    throw v1

    .line 836
    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Client mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist core-platform-api test-api getEnableSessionCreation()Z
    .registers 2

    .line 731
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEnableSessionCreation()Z

    move-result v0

    return v0
.end method

.method public final whitelist core-platform-api test-api getEnabledCipherSuites()[Ljava/lang/String;
    .registers 2

    .line 746
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist core-platform-api test-api getEnabledProtocols()[Ljava/lang/String;
    .registers 2

    .line 761
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist core-platform-api test-api getHandshakeApplicationProtocol()Ljava/lang/String;
    .registers 4

    .line 1142
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 1143
    :try_start_3
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_12

    iget v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_12

    .line 1144
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->getApplicationProtocol()Ljava/lang/String;

    move-result-object v1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    monitor-exit v0

    .line 1143
    return-object v1

    .line 1145
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public final whitelist core-platform-api test-api getHandshakeSession()Ljavax/net/ssl/SSLSession;
    .registers 4

    .line 716
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 717
    :try_start_3
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1d

    iget v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_1d

    .line 718
    new-instance v1, Lcom/android/org/conscrypt/ExternalSession;

    new-instance v2, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$2;

    invoke-direct {v2, p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$2;-><init>(Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)V

    invoke-direct {v1, v2}, Lcom/android/org/conscrypt/ExternalSession;-><init>(Lcom/android/org/conscrypt/ExternalSession$Provider;)V

    invoke-static {v1}, Lcom/android/org/conscrypt/Platform;->wrapSSLSession(Lcom/android/org/conscrypt/ExternalSession;)Ljavax/net/ssl/SSLSession;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 725
    :cond_1d
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 726
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public final whitelist core-platform-api test-api getInputStream()Ljava/io/InputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 428
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->checkOpen()V

    .line 431
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 432
    :try_start_6
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1e

    .line 436
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->is:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;

    if-nez v1, :cond_17

    .line 437
    new-instance v1, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;

    invoke-direct {v1, p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;-><init>(Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)V

    iput-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->is:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;

    .line 440
    :cond_17
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->is:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;

    .line 441
    .local v1, "returnVal":Ljava/io/InputStream;
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_26

    .line 446
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->waitForHandshake()V

    .line 447
    return-object v1

    .line 433
    .end local v1    # "returnVal":Ljava/io/InputStream;
    :cond_1e
    :try_start_1e
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "Socket is closed."

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    throw v1

    .line 441
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_1e .. :try_end_28} :catchall_26

    throw v1
.end method

.method public final whitelist core-platform-api test-api getNeedClientAuth()Z
    .registers 2

    .line 935
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getNeedClientAuth()Z

    move-result v0

    return v0
.end method

.method public final whitelist core-platform-api test-api getOutputStream()Ljava/io/OutputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 452
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->checkOpen()V

    .line 455
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 456
    :try_start_6
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1e

    .line 460
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->os:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;

    if-nez v1, :cond_17

    .line 461
    new-instance v1, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;

    invoke-direct {v1, p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;-><init>(Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)V

    iput-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->os:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;

    .line 464
    :cond_17
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->os:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;

    .line 465
    .local v1, "returnVal":Ljava/io/OutputStream;
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_26

    .line 470
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->waitForHandshake()V

    .line 471
    return-object v1

    .line 457
    .end local v1    # "returnVal":Ljava/io/OutputStream;
    :cond_1e
    :try_start_1e
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "Socket is closed."

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    throw v1

    .line 465
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_1e .. :try_end_28} :catchall_26

    throw v1
.end method

.method public final blacklist getPSKKey(Lcom/android/org/conscrypt/PSKKeyManager;Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .registers 5
    .param p1, "keyManager"    # Lcom/android/org/conscrypt/PSKKeyManager;
    .param p2, "identityHint"    # Ljava/lang/String;
    .param p3, "identity"    # Ljava/lang/String;

    .line 1176
    invoke-interface {p1, p2, p3, p0}, Lcom/android/org/conscrypt/PSKKeyManager;->getKey(Ljava/lang/String;Ljava/lang/String;Ljava/net/Socket;)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist core-platform-api test-api getSSLParameters()Ljavax/net/ssl/SSLParameters;
    .registers 3

    .line 1150
    invoke-super {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v0

    .line 1151
    .local v0, "params":Ljavax/net/ssl/SSLParameters;
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/Platform;->getSSLParameters(Ljavax/net/ssl/SSLParameters;Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/AbstractConscryptSocket;)V

    .line 1152
    return-object v0
.end method

.method public final whitelist core-platform-api test-api getSession()Ljavax/net/ssl/SSLSession;
    .registers 2

    .line 664
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->externalSession:Ljavax/net/ssl/SSLSession;

    return-object v0
.end method

.method public final blacklist getSoWriteTimeout()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 963
    iget v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->writeTimeoutMilliseconds:I

    return v0
.end method

.method public final whitelist core-platform-api test-api getSupportedCipherSuites()[Ljava/lang/String;
    .registers 2

    .line 741
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist core-platform-api test-api getSupportedProtocols()[Ljava/lang/String;
    .registers 2

    .line 756
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist getTlsUnique()[B
    .registers 2

    .line 899
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/NativeSsl;->getTlsUnique()[B

    move-result-object v0

    return-object v0
.end method

.method public final whitelist core-platform-api test-api getUseClientMode()Z
    .registers 2

    .line 914
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getUseClientMode()Z

    move-result v0

    return v0
.end method

.method public final whitelist core-platform-api test-api getWantClientAuth()Z
    .registers 2

    .line 930
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getWantClientAuth()Z

    move-result v0

    return v0
.end method

.method public final blacklist onNewSessionEstablished(J)V
    .registers 6
    .param p1, "sslSessionNativePtr"    # J

    .line 367
    :try_start_0
    invoke-static {p1, p2}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_SESSION_up_ref(J)V

    .line 372
    new-instance v0, Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;

    invoke-direct {v0, p1, p2}, Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;-><init>(J)V

    .line 374
    .local v0, "ref":Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->activeSession:Lcom/android/org/conscrypt/ActiveSession;

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeSslSession;->newInstance(Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;Lcom/android/org/conscrypt/ConscryptSession;)Lcom/android/org/conscrypt/NativeSslSession;

    move-result-object v1

    .line 377
    .local v1, "nativeSession":Lcom/android/org/conscrypt/NativeSslSession;
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sessionContext()Lcom/android/org/conscrypt/AbstractSessionContext;

    move-result-object v2

    .line 378
    .local v2, "ctx":Lcom/android/org/conscrypt/AbstractSessionContext;
    invoke-virtual {v2, v1}, Lcom/android/org/conscrypt/AbstractSessionContext;->cacheSession(Lcom/android/org/conscrypt/NativeSslSession;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    .line 381
    .end local v0    # "ref":Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;
    .end local v1    # "nativeSession":Lcom/android/org/conscrypt/NativeSslSession;
    .end local v2    # "ctx":Lcom/android/org/conscrypt/AbstractSessionContext;
    goto :goto_17

    .line 379
    :catch_16
    move-exception v0

    .line 382
    :goto_17
    return-void
.end method

.method public final blacklist onSSLStateChange(II)V
    .registers 6
    .param p1, "type"    # I
    .param p2, "val"    # I

    .line 334
    const/16 v0, 0x20

    if-eq p1, v0, :cond_5

    .line 336
    return-void

    .line 342
    :cond_5
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 343
    :try_start_8
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_10

    .line 345
    monitor-exit v0

    return-void

    .line 350
    :cond_10
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->transitionTo(I)V

    .line 351
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_25

    .line 354
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->notifyHandshakeCompletedListeners()V

    .line 356
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v1

    .line 358
    :try_start_1b
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 359
    monitor-exit v1

    .line 360
    return-void

    .line 359
    :catchall_22
    move-exception v0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_22

    throw v0

    .line 351
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public blacklist selectApplicationProtocol([B)I
    .registers 4
    .param p1, "protocols"    # [B

    .line 1118
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getApplicationProtocolSelector()Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;

    move-result-object v0

    .line 1119
    .local v0, "adapter":Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;
    if-nez v0, :cond_a

    .line 1120
    const/4 v1, 0x3

    return v1

    .line 1122
    :cond_a
    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;->selectApplicationProtocol([B)I

    move-result v1

    return v1
.end method

.method public final blacklist serverCertificateRequested()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 392
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 393
    :try_start_3
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/NativeSsl;->configureServerCertificate()V

    .line 394
    monitor-exit v0

    .line 395
    return-void

    .line 394
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public final blacklist serverPSKKeyRequested(Ljava/lang/String;Ljava/lang/String;[B)I
    .registers 5
    .param p1, "identityHint"    # Ljava/lang/String;
    .param p2, "identity"    # Ljava/lang/String;
    .param p3, "key"    # [B

    .line 328
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/org/conscrypt/NativeSsl;->serverPSKKeyRequested(Ljava/lang/String;Ljava/lang/String;[B)I

    move-result v0

    return v0
.end method

.method public final blacklist serverSessionRequested([B)J
    .registers 4
    .param p1, "id"    # [B

    .line 387
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final blacklist setApplicationProtocolSelector(Lcom/android/org/conscrypt/ApplicationProtocolSelector;)V
    .registers 3
    .param p1, "selector"    # Lcom/android/org/conscrypt/ApplicationProtocolSelector;

    .line 1107
    nop

    .line 1108
    if-nez p1, :cond_5

    const/4 v0, 0x0

    goto :goto_a

    :cond_5
    new-instance v0, Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;

    invoke-direct {v0, p0, p1}, Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;-><init>(Ljavax/net/ssl/SSLSocket;Lcom/android/org/conscrypt/ApplicationProtocolSelector;)V

    .line 1107
    :goto_a
    invoke-virtual {p0, v0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->setApplicationProtocolSelector(Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;)V

    .line 1109
    return-void
.end method

.method final blacklist setApplicationProtocolSelector(Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;)V
    .registers 3
    .param p1, "selector"    # Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;

    .line 1113
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setApplicationProtocolSelector(Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;)V

    .line 1114
    return-void
.end method

.method final blacklist setApplicationProtocols([Ljava/lang/String;)V
    .registers 3
    .param p1, "protocols"    # [Ljava/lang/String;

    .line 1127
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setApplicationProtocols([Ljava/lang/String;)V

    .line 1128
    return-void
.end method

.method public final blacklist setChannelIdEnabled(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .line 809
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->getUseClientMode()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 813
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 814
    :try_start_9
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    if-nez v1, :cond_13

    .line 819
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_1b

    .line 820
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    iput-boolean p1, v0, Lcom/android/org/conscrypt/SSLParametersImpl;->channelIdEnabled:Z

    .line 821
    return-void

    .line 815
    :cond_13
    :try_start_13
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not enable/disable Channel ID after the initial handshake has begun."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    .end local p1    # "enabled":Z
    throw v1

    .line 819
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    .restart local p1    # "enabled":Z
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_1b

    throw v1

    .line 810
    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Client mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final blacklist core-platform-api setChannelIdPrivateKey(Ljava/security/PrivateKey;)V
    .registers 5
    .param p1, "privateKey"    # Ljava/security/PrivateKey;

    .line 862
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->getUseClientMode()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 866
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 867
    :try_start_9
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    if-nez v1, :cond_42

    .line 872
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_4a

    .line 874
    if-nez p1, :cond_19

    .line 875
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/org/conscrypt/SSLParametersImpl;->channelIdEnabled:Z

    .line 876
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->channelIdPrivateKey:Lcom/android/org/conscrypt/OpenSSLKey;

    goto :goto_41

    .line 878
    :cond_19
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/org/conscrypt/SSLParametersImpl;->channelIdEnabled:Z

    .line 880
    const/4 v0, 0x0

    .line 881
    .local v0, "ecParams":Ljava/security/spec/ECParameterSpec;
    :try_start_1f
    instance-of v1, p1, Ljava/security/interfaces/ECKey;

    if-eqz v1, :cond_2b

    .line 882
    move-object v1, p1

    check-cast v1, Ljava/security/interfaces/ECKey;

    invoke-interface {v1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    move-object v0, v1

    .line 884
    :cond_2b
    if-nez v0, :cond_38

    .line 886
    const-string v1, "prime256v1"

    .line 887
    invoke-static {v1}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getCurveByName(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getECParameterSpec()Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    move-object v0, v1

    .line 889
    :cond_38
    nop

    .line 890
    invoke-static {p1, v0}, Lcom/android/org/conscrypt/OpenSSLKey;->fromECPrivateKeyForTLSStackOnly(Ljava/security/PrivateKey;Ljava/security/spec/ECParameterSpec;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->channelIdPrivateKey:Lcom/android/org/conscrypt/OpenSSLKey;
    :try_end_3f
    .catch Ljava/security/InvalidKeyException; {:try_start_1f .. :try_end_3f} :catch_40

    .line 893
    .end local v0    # "ecParams":Ljava/security/spec/ECParameterSpec;
    goto :goto_41

    .line 891
    :catch_40
    move-exception v0

    .line 895
    :goto_41
    return-void

    .line 868
    :cond_42
    :try_start_42
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not change Channel ID private key after the initial handshake has begun."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    .end local p1    # "privateKey":Ljava/security/PrivateKey;
    throw v1

    .line 872
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    .restart local p1    # "privateKey":Ljava/security/PrivateKey;
    :catchall_4a
    move-exception v1

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_4a

    throw v1

    .line 863
    :cond_4d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Server mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist core-platform-api test-api setEnableSessionCreation(Z)V
    .registers 3
    .param p1, "flag"    # Z

    .line 736
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setEnableSessionCreation(Z)V

    .line 737
    return-void
.end method

.method public final whitelist core-platform-api test-api setEnabledCipherSuites([Ljava/lang/String;)V
    .registers 3
    .param p1, "suites"    # [Ljava/lang/String;

    .line 751
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 752
    return-void
.end method

.method public final whitelist core-platform-api test-api setEnabledProtocols([Ljava/lang/String;)V
    .registers 3
    .param p1, "protocols"    # [Ljava/lang/String;

    .line 766
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setEnabledProtocols([Ljava/lang/String;)V

    .line 767
    return-void
.end method

.method public final blacklist core-platform-api setHandshakeTimeout(I)V
    .registers 2
    .param p1, "handshakeTimeoutMilliseconds"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 972
    iput p1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->handshakeTimeoutMilliseconds:I

    .line 973
    return-void
.end method

.method public final greylist-max-q core-platform-api setHostname(Ljava/lang/String;)V
    .registers 4
    .param p1, "hostname"    # Ljava/lang/String;

    .line 795
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    if-eqz p1, :cond_6

    const/4 v1, 0x1

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setUseSni(Z)V

    .line 796
    invoke-super {p0, p1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setHostname(Ljava/lang/String;)V

    .line 797
    return-void
.end method

.method public final whitelist core-platform-api test-api setNeedClientAuth(Z)V
    .registers 3
    .param p1, "need"    # Z

    .line 940
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setNeedClientAuth(Z)V

    .line 941
    return-void
.end method

.method public final whitelist core-platform-api test-api setSSLParameters(Ljavax/net/ssl/SSLParameters;)V
    .registers 3
    .param p1, "p"    # Ljavax/net/ssl/SSLParameters;

    .line 1157
    invoke-super {p0, p1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    .line 1158
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-static {p1, v0, p0}, Lcom/android/org/conscrypt/Platform;->setSSLParameters(Ljavax/net/ssl/SSLParameters;Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/AbstractConscryptSocket;)V

    .line 1159
    return-void
.end method

.method public final blacklist core-platform-api setSoWriteTimeout(I)V
    .registers 4
    .param p1, "writeTimeoutMilliseconds"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 953
    iput p1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->writeTimeoutMilliseconds:I

    .line 955
    int-to-long v0, p1

    invoke-static {p0, v0, v1}, Lcom/android/org/conscrypt/Platform;->setSocketWriteTimeout(Ljava/net/Socket;J)V

    .line 956
    return-void
.end method

.method public final whitelist core-platform-api test-api setUseClientMode(Z)V
    .registers 5
    .param p1, "mode"    # Z

    .line 919
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 920
    :try_start_3
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    if-nez v1, :cond_e

    .line 924
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_16

    .line 925
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setUseClientMode(Z)V

    .line 926
    return-void

    .line 921
    :cond_e
    :try_start_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Could not change the mode after the initial handshake has begun."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    .end local p1    # "mode":Z
    throw v1

    .line 924
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    .restart local p1    # "mode":Z
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_16

    throw v1
.end method

.method public final greylist-max-q core-platform-api setUseSessionTickets(Z)V
    .registers 3
    .param p1, "useSessionTickets"    # Z

    .line 780
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setUseSessionTickets(Z)V

    .line 781
    return-void
.end method

.method public final whitelist core-platform-api test-api setWantClientAuth(Z)V
    .registers 3
    .param p1, "want"    # Z

    .line 945
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setWantClientAuth(Z)V

    .line 946
    return-void
.end method

.method public final whitelist core-platform-api test-api startHandshake()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->checkOpen()V

    .line 184
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 185
    :try_start_6
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    if-nez v1, :cond_17f

    .line 186
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->transitionTo(I)V

    .line 192
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_181

    .line 194
    const/4 v0, 0x1

    .line 196
    .local v0, "releaseResources":Z
    const/16 v2, 0x8

    :try_start_12
    iget-object v3, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->guard:Ljava/lang/Object;

    const-string v4, "close"

    invoke-static {v3, v4}, Lcom/android/org/conscrypt/Platform;->closeGuardOpen(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    iget-object v3, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->getHostname()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->channelIdPrivateKey:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v3, v4, v5}, Lcom/android/org/conscrypt/NativeSsl;->initialize(Ljava/lang/String;Lcom/android/org/conscrypt/OpenSSLKey;)V

    .line 203
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->getUseClientMode()Z

    move-result v3

    if-eqz v3, :cond_43

    .line 204
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->clientSessionContext()Lcom/android/org/conscrypt/ClientSessionContext;

    move-result-object v3

    .line 205
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->getHostnameOrIP()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->getPort()I

    move-result v5

    iget-object v6, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 204
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/org/conscrypt/ClientSessionContext;->getCachedSession(Ljava/lang/String;ILcom/android/org/conscrypt/SSLParametersImpl;)Lcom/android/org/conscrypt/NativeSslSession;

    move-result-object v3

    .line 206
    .local v3, "cachedSession":Lcom/android/org/conscrypt/NativeSslSession;
    if-eqz v3, :cond_43

    .line 207
    iget-object v4, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v3, v4}, Lcom/android/org/conscrypt/NativeSslSession;->offerToResume(Lcom/android/org/conscrypt/NativeSsl;)V

    .line 212
    .end local v3    # "cachedSession":Lcom/android/org/conscrypt/NativeSslSession;
    :cond_43
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->getSoTimeout()I

    move-result v3

    .line 213
    .local v3, "savedReadTimeoutMilliseconds":I
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->getSoWriteTimeout()I

    move-result v4

    .line 214
    .local v4, "savedWriteTimeoutMilliseconds":I
    iget v5, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->handshakeTimeoutMilliseconds:I

    if-ltz v5, :cond_59

    .line 215
    iget v5, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->handshakeTimeoutMilliseconds:I

    invoke-virtual {p0, v5}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->setSoTimeout(I)V

    .line 216
    iget v5, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->handshakeTimeoutMilliseconds:I

    invoke-virtual {p0, v5}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->setSoWriteTimeout(I)V

    .line 219
    :cond_59
    iget-object v5, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v5
    :try_end_5c
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_12 .. :try_end_5c} :catch_158
    .catchall {:try_start_12 .. :try_end_5c} :catchall_156

    .line 220
    :try_start_5c
    iget v6, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    if-ne v6, v2, :cond_79

    .line 221
    monitor-exit v5
    :try_end_61
    .catchall {:try_start_5c .. :try_end_61} :catchall_153

    .line 291
    if-eqz v0, :cond_78

    .line 292
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v1

    .line 298
    :try_start_66
    invoke-direct {p0, v2}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->transitionTo(I)V

    .line 299
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 300
    monitor-exit v1
    :try_end_6f
    .catchall {:try_start_66 .. :try_end_6f} :catchall_75

    .line 303
    :try_start_6f
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->shutdownAndFreeSslNative()V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_72} :catch_73

    .line 306
    goto :goto_78

    .line 304
    :catch_73
    move-exception v1

    goto :goto_78

    .line 300
    :catchall_75
    move-exception v2

    :try_start_76
    monitor-exit v1
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_75

    throw v2

    .line 221
    :cond_78
    :goto_78
    return-void

    .line 223
    :cond_79
    :try_start_79
    monitor-exit v5
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_153

    .line 226
    const/4 v5, 0x0

    const/4 v6, 0x1

    :try_start_7c
    iget-object v7, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    iget-object v8, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->socket:Ljava/net/Socket;

    invoke-static {v8}, Lcom/android/org/conscrypt/Platform;->getFileDescriptor(Ljava/net/Socket;)Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->getSoTimeout()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/android/org/conscrypt/NativeSsl;->doHandshake(Ljava/io/FileDescriptor;I)V

    .line 229
    iget-object v7, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->activeSession:Lcom/android/org/conscrypt/ActiveSession;

    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->getHostnameOrIP()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->getPort()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/android/org/conscrypt/ActiveSession;->onPeerCertificateAvailable(Ljava/lang/String;I)V
    :try_end_98
    .catch Ljava/security/cert/CertificateException; {:try_start_7c .. :try_end_98} :catch_144
    .catch Ljavax/net/ssl/SSLException; {:try_start_7c .. :try_end_98} :catch_100
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_7c .. :try_end_98} :catch_158
    .catchall {:try_start_7c .. :try_end_98} :catchall_156

    .line 258
    nop

    .line 260
    :try_start_99
    iget-object v7, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v7
    :try_end_9c
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_99 .. :try_end_9c} :catch_158
    .catchall {:try_start_99 .. :try_end_9c} :catchall_156

    .line 261
    :try_start_9c
    iget v8, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    if-ne v8, v2, :cond_b9

    .line 262
    monitor-exit v7
    :try_end_a1
    .catchall {:try_start_9c .. :try_end_a1} :catchall_fd

    .line 291
    if-eqz v0, :cond_b8

    .line 292
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v1

    .line 298
    :try_start_a6
    invoke-direct {p0, v2}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->transitionTo(I)V

    .line 299
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 300
    monitor-exit v1
    :try_end_af
    .catchall {:try_start_a6 .. :try_end_af} :catchall_b5

    .line 303
    :try_start_af
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->shutdownAndFreeSslNative()V
    :try_end_b2
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_b2} :catch_b3

    .line 306
    goto :goto_b8

    .line 304
    :catch_b3
    move-exception v1

    goto :goto_b8

    .line 300
    :catchall_b5
    move-exception v2

    :try_start_b6
    monitor-exit v1
    :try_end_b7
    .catchall {:try_start_b6 .. :try_end_b7} :catchall_b5

    throw v2

    .line 262
    :cond_b8
    :goto_b8
    return-void

    .line 264
    :cond_b9
    :try_start_b9
    monitor-exit v7
    :try_end_ba
    .catchall {:try_start_b9 .. :try_end_ba} :catchall_fd

    .line 267
    :try_start_ba
    iget v7, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->handshakeTimeoutMilliseconds:I

    if-ltz v7, :cond_c4

    .line 268
    invoke-virtual {p0, v3}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->setSoTimeout(I)V

    .line 269
    invoke-virtual {p0, v4}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->setSoWriteTimeout(I)V

    .line 272
    :cond_c4
    iget-object v7, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v7
    :try_end_c7
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_ba .. :try_end_c7} :catch_158
    .catchall {:try_start_ba .. :try_end_c7} :catchall_156

    .line 273
    :try_start_c7
    iget v8, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    if-ne v8, v2, :cond_cc

    move v5, v6

    :cond_cc
    move v0, v5

    .line 275
    iget v5, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    if-ne v5, v1, :cond_d6

    .line 276
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->transitionTo(I)V

    goto :goto_da

    .line 278
    :cond_d6
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->transitionTo(I)V

    .line 281
    :goto_da
    if-nez v0, :cond_e1

    .line 284
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 286
    :cond_e1
    monitor-exit v7
    :try_end_e2
    .catchall {:try_start_c7 .. :try_end_e2} :catchall_fa

    .line 291
    .end local v3    # "savedReadTimeoutMilliseconds":I
    .end local v4    # "savedWriteTimeoutMilliseconds":I
    if-eqz v0, :cond_f9

    .line 292
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v1

    .line 298
    :try_start_e7
    invoke-direct {p0, v2}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->transitionTo(I)V

    .line 299
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 300
    monitor-exit v1
    :try_end_f0
    .catchall {:try_start_e7 .. :try_end_f0} :catchall_f6

    .line 303
    :try_start_f0
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->shutdownAndFreeSslNative()V
    :try_end_f3
    .catch Ljava/io/IOException; {:try_start_f0 .. :try_end_f3} :catch_f4

    .line 306
    :goto_f3
    goto :goto_f9

    .line 304
    :catch_f4
    move-exception v1

    goto :goto_f3

    .line 300
    :catchall_f6
    move-exception v2

    :try_start_f7
    monitor-exit v1
    :try_end_f8
    .catchall {:try_start_f7 .. :try_end_f8} :catchall_f6

    throw v2

    .line 309
    :cond_f9
    :goto_f9
    return-void

    .line 286
    .restart local v3    # "savedReadTimeoutMilliseconds":I
    .restart local v4    # "savedWriteTimeoutMilliseconds":I
    :catchall_fa
    move-exception v1

    :try_start_fb
    monitor-exit v7
    :try_end_fc
    .catchall {:try_start_fb .. :try_end_fc} :catchall_fa

    .end local v0    # "releaseResources":Z
    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    :try_start_fc
    throw v1
    :try_end_fd
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_fc .. :try_end_fd} :catch_158
    .catchall {:try_start_fc .. :try_end_fd} :catchall_156

    .line 264
    .restart local v0    # "releaseResources":Z
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    :catchall_fd
    move-exception v1

    :try_start_fe
    monitor-exit v7
    :try_end_ff
    .catchall {:try_start_fe .. :try_end_ff} :catchall_fd

    .end local v0    # "releaseResources":Z
    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    :try_start_ff
    throw v1

    .line 234
    .restart local v0    # "releaseResources":Z
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    :catch_100
    move-exception v1

    .line 242
    .local v1, "e":Ljavax/net/ssl/SSLException;
    iget-object v7, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v7
    :try_end_104
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_ff .. :try_end_104} :catch_158
    .catchall {:try_start_ff .. :try_end_104} :catchall_156

    .line 243
    :try_start_104
    iget v8, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    if-ne v8, v2, :cond_121

    .line 244
    monitor-exit v7
    :try_end_109
    .catchall {:try_start_104 .. :try_end_109} :catchall_141

    .line 291
    if-eqz v0, :cond_120

    .line 292
    iget-object v5, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v5

    .line 298
    :try_start_10e
    invoke-direct {p0, v2}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->transitionTo(I)V

    .line 299
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 300
    monitor-exit v5
    :try_end_117
    .catchall {:try_start_10e .. :try_end_117} :catchall_11d

    .line 303
    :try_start_117
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->shutdownAndFreeSslNative()V
    :try_end_11a
    .catch Ljava/io/IOException; {:try_start_117 .. :try_end_11a} :catch_11b

    .line 306
    goto :goto_120

    .line 304
    :catch_11b
    move-exception v2

    goto :goto_120

    .line 300
    :catchall_11d
    move-exception v2

    :try_start_11e
    monitor-exit v5
    :try_end_11f
    .catchall {:try_start_11e .. :try_end_11f} :catchall_11d

    throw v2

    .line 244
    :cond_120
    :goto_120
    return-void

    .line 246
    :cond_121
    :try_start_121
    monitor-exit v7
    :try_end_122
    .catchall {:try_start_121 .. :try_end_122} :catchall_141

    .line 249
    :try_start_122
    invoke-virtual {v1}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v7

    .line 251
    .local v7, "message":Ljava/lang/String;
    const-string v8, "unexpected CCS"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_13f

    .line 252
    const-string v8, "ssl_unexpected_ccs: host=%s"

    new-array v6, v6, [Ljava/lang/Object;

    .line 253
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->getHostnameOrIP()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v5

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 254
    .local v5, "logMessage":Ljava/lang/String;
    invoke-static {v5}, Lcom/android/org/conscrypt/Platform;->logEvent(Ljava/lang/String;)V

    .line 257
    .end local v5    # "logMessage":Ljava/lang/String;
    :cond_13f
    nop

    .end local v0    # "releaseResources":Z
    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    throw v1
    :try_end_141
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_122 .. :try_end_141} :catch_158
    .catchall {:try_start_122 .. :try_end_141} :catchall_156

    .line 246
    .end local v7    # "message":Ljava/lang/String;
    .restart local v0    # "releaseResources":Z
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    :catchall_141
    move-exception v5

    :try_start_142
    monitor-exit v7
    :try_end_143
    .catchall {:try_start_142 .. :try_end_143} :catchall_141

    .end local v0    # "releaseResources":Z
    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    :try_start_143
    throw v5

    .line 230
    .end local v1    # "e":Ljavax/net/ssl/SSLException;
    .restart local v0    # "releaseResources":Z
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    :catch_144
    move-exception v1

    .line 231
    .local v1, "e":Ljava/security/cert/CertificateException;
    new-instance v5, Ljavax/net/ssl/SSLHandshakeException;

    invoke-virtual {v1}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    .line 232
    .local v5, "wrapper":Ljavax/net/ssl/SSLHandshakeException;
    invoke-virtual {v5, v1}, Ljavax/net/ssl/SSLHandshakeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 233
    nop

    .end local v0    # "releaseResources":Z
    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    throw v5
    :try_end_153
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_143 .. :try_end_153} :catch_158
    .catchall {:try_start_143 .. :try_end_153} :catchall_156

    .line 223
    .end local v1    # "e":Ljava/security/cert/CertificateException;
    .end local v5    # "wrapper":Ljavax/net/ssl/SSLHandshakeException;
    .restart local v0    # "releaseResources":Z
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    :catchall_153
    move-exception v1

    :try_start_154
    monitor-exit v5
    :try_end_155
    .catchall {:try_start_154 .. :try_end_155} :catchall_153

    .end local v0    # "releaseResources":Z
    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    :try_start_155
    throw v1
    :try_end_156
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_155 .. :try_end_156} :catch_158
    .catchall {:try_start_155 .. :try_end_156} :catchall_156

    .line 291
    .end local v3    # "savedReadTimeoutMilliseconds":I
    .end local v4    # "savedWriteTimeoutMilliseconds":I
    .restart local v0    # "releaseResources":Z
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    :catchall_156
    move-exception v1

    goto :goto_167

    .line 287
    :catch_158
    move-exception v1

    .line 288
    .local v1, "e":Ljavax/net/ssl/SSLProtocolException;
    :try_start_159
    new-instance v3, Ljavax/net/ssl/SSLHandshakeException;

    const-string v4, "Handshake failed"

    invoke-direct {v3, v4}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljavax/net/ssl/SSLHandshakeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    check-cast v3, Ljavax/net/ssl/SSLHandshakeException;

    .end local v0    # "releaseResources":Z
    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    throw v3
    :try_end_167
    .catchall {:try_start_159 .. :try_end_167} :catchall_156

    .line 291
    .end local v1    # "e":Ljavax/net/ssl/SSLProtocolException;
    .restart local v0    # "releaseResources":Z
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    :goto_167
    if-eqz v0, :cond_17e

    .line 292
    iget-object v3, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v3

    .line 298
    :try_start_16c
    invoke-direct {p0, v2}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->transitionTo(I)V

    .line 299
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 300
    monitor-exit v3
    :try_end_175
    .catchall {:try_start_16c .. :try_end_175} :catchall_17b

    .line 303
    :try_start_175
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->shutdownAndFreeSslNative()V
    :try_end_178
    .catch Ljava/io/IOException; {:try_start_175 .. :try_end_178} :catch_179

    .line 306
    goto :goto_17e

    .line 304
    :catch_179
    move-exception v2

    goto :goto_17e

    .line 300
    :catchall_17b
    move-exception v1

    :try_start_17c
    monitor-exit v3
    :try_end_17d
    .catchall {:try_start_17c .. :try_end_17d} :catchall_17b

    throw v1

    .line 308
    :cond_17e
    :goto_17e
    throw v1

    .line 190
    .end local v0    # "releaseResources":Z
    :cond_17f
    :try_start_17f
    monitor-exit v0

    return-void

    .line 192
    :catchall_181
    move-exception v1

    monitor-exit v0
    :try_end_183
    .catchall {:try_start_17f .. :try_end_183} :catchall_181

    throw v1
.end method

.method public final blacklist verifyCertificateChain([[BLjava/lang/String;)V
    .registers 8
    .param p1, "certChain"    # [[B
    .param p2, "authMethod"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 401
    if-eqz p1, :cond_40

    :try_start_2
    array-length v0, p1

    if-eqz v0, :cond_40

    .line 404
    invoke-static {p1}, Lcom/android/org/conscrypt/SSLUtils;->decodeX509CertificateChain([[B)[Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 406
    .local v0, "peerCertChain":[Ljava/security/cert/X509Certificate;
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->getX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v1

    .line 407
    .local v1, "x509tm":Ljavax/net/ssl/X509TrustManager;
    if-eqz v1, :cond_38

    .line 411
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->activeSession:Lcom/android/org/conscrypt/ActiveSession;

    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->getHostnameOrIP()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->getPort()I

    move-result v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/org/conscrypt/ActiveSession;->onPeerCertificatesReceived(Ljava/lang/String;I[Ljava/security/cert/X509Certificate;)V

    .line 413
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->getUseClientMode()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 414
    invoke-static {v1, v0, p2, p0}, Lcom/android/org/conscrypt/Platform;->checkServerTrusted(Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Lcom/android/org/conscrypt/AbstractConscryptSocket;)V

    goto :goto_36

    .line 416
    :cond_28
    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    .line 417
    .local v2, "authType":Ljava/lang/String;
    invoke-static {v1, v0, v2, p0}, Lcom/android/org/conscrypt/Platform;->checkClientTrusted(Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Lcom/android/org/conscrypt/AbstractConscryptSocket;)V

    .line 423
    .end local v0    # "peerCertChain":[Ljava/security/cert/X509Certificate;
    .end local v1    # "x509tm":Ljavax/net/ssl/X509TrustManager;
    .end local v2    # "authType":Ljava/lang/String;
    :goto_36
    nop

    .line 424
    return-void

    .line 408
    .restart local v0    # "peerCertChain":[Ljava/security/cert/X509Certificate;
    .restart local v1    # "x509tm":Ljavax/net/ssl/X509TrustManager;
    :cond_38
    new-instance v2, Ljava/security/cert/CertificateException;

    const-string v3, "No X.509 TrustManager"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    .end local p1    # "certChain":[[B
    .end local p2    # "authMethod":Ljava/lang/String;
    throw v2

    .line 402
    .end local v0    # "peerCertChain":[Ljava/security/cert/X509Certificate;
    .end local v1    # "x509tm":Ljavax/net/ssl/X509TrustManager;
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    .restart local p1    # "certChain":[[B
    .restart local p2    # "authMethod":Ljava/lang/String;
    :cond_40
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "Peer sent no certificate"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    .end local p1    # "certChain":[[B
    .end local p2    # "authMethod":Ljava/lang/String;
    throw v0
    :try_end_48
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_48} :catch_4f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_48} :catch_48

    .line 421
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    .restart local p1    # "certChain":[[B
    .restart local p2    # "authMethod":Ljava/lang/String;
    :catch_48
    move-exception v0

    .line 422
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/security/cert/CertificateException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 419
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_4f
    move-exception v0

    .line 420
    .local v0, "e":Ljava/security/cert/CertificateException;
    throw v0
.end method
