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

.field private blacklist handshakeStartedMillis:J

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

    .line 125
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

    .line 126
    iput-object p1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 127
    invoke-static {p1, p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->newSsl(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)Lcom/android/org/conscrypt/NativeSsl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    .line 128
    new-instance v1, Lcom/android/org/conscrypt/ActiveSession;

    invoke-virtual {p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->getSessionContext()Lcom/android/org/conscrypt/AbstractSessionContext;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/android/org/conscrypt/ActiveSession;-><init>(Lcom/android/org/conscrypt/NativeSsl;Lcom/android/org/conscrypt/AbstractSessionContext;)V

    iput-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->activeSession:Lcom/android/org/conscrypt/ActiveSession;

    .line 129
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

    .line 133
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

    .line 134
    iput-object p3, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 135
    invoke-static {p3, p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->newSsl(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)Lcom/android/org/conscrypt/NativeSsl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    .line 136
    new-instance v1, Lcom/android/org/conscrypt/ActiveSession;

    invoke-virtual {p3}, Lcom/android/org/conscrypt/SSLParametersImpl;->getSessionContext()Lcom/android/org/conscrypt/AbstractSessionContext;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/android/org/conscrypt/ActiveSession;-><init>(Lcom/android/org/conscrypt/NativeSsl;Lcom/android/org/conscrypt/AbstractSessionContext;)V

    iput-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->activeSession:Lcom/android/org/conscrypt/ActiveSession;

    .line 137
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

    .line 149
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

    .line 150
    iput-object p5, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 151
    invoke-static {p5, p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->newSsl(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)Lcom/android/org/conscrypt/NativeSsl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    .line 152
    new-instance v1, Lcom/android/org/conscrypt/ActiveSession;

    invoke-virtual {p5}, Lcom/android/org/conscrypt/SSLParametersImpl;->getSessionContext()Lcom/android/org/conscrypt/AbstractSessionContext;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/android/org/conscrypt/ActiveSession;-><init>(Lcom/android/org/conscrypt/NativeSsl;Lcom/android/org/conscrypt/AbstractSessionContext;)V

    iput-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->activeSession:Lcom/android/org/conscrypt/ActiveSession;

    .line 153
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

    .line 141
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

    .line 142
    iput-object p3, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 143
    invoke-static {p3, p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->newSsl(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)Lcom/android/org/conscrypt/NativeSsl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    .line 144
    new-instance v1, Lcom/android/org/conscrypt/ActiveSession;

    invoke-virtual {p3}, Lcom/android/org/conscrypt/SSLParametersImpl;->getSessionContext()Lcom/android/org/conscrypt/AbstractSessionContext;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/android/org/conscrypt/ActiveSession;-><init>(Lcom/android/org/conscrypt/NativeSsl;Lcom/android/org/conscrypt/AbstractSessionContext;)V

    iput-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->activeSession:Lcom/android/org/conscrypt/ActiveSession;

    .line 145
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

    .line 157
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

    .line 158
    iput-object p5, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 159
    invoke-static {p5, p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->newSsl(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)Lcom/android/org/conscrypt/NativeSsl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    .line 160
    new-instance v1, Lcom/android/org/conscrypt/ActiveSession;

    invoke-virtual {p5}, Lcom/android/org/conscrypt/SSLParametersImpl;->getSessionContext()Lcom/android/org/conscrypt/AbstractSessionContext;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/android/org/conscrypt/ActiveSession;-><init>(Lcom/android/org/conscrypt/NativeSsl;Lcom/android/org/conscrypt/AbstractSessionContext;)V

    iput-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->activeSession:Lcom/android/org/conscrypt/ActiveSession;

    .line 161
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

    .line 165
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

    .line 166
    iput-object p5, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 167
    invoke-static {p5, p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->newSsl(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)Lcom/android/org/conscrypt/NativeSsl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    .line 168
    new-instance v1, Lcom/android/org/conscrypt/ActiveSession;

    invoke-virtual {p5}, Lcom/android/org/conscrypt/SSLParametersImpl;->getSessionContext()Lcom/android/org/conscrypt/AbstractSessionContext;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/android/org/conscrypt/ActiveSession;-><init>(Lcom/android/org/conscrypt/NativeSsl;Lcom/android/org/conscrypt/AbstractSessionContext;)V

    iput-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->activeSession:Lcom/android/org/conscrypt/ActiveSession;

    .line 169
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

    .line 489
    iget v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_22

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    goto :goto_22

    .line 493
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

    .line 490
    :cond_22
    :goto_22
    return-void
.end method

.method private blacklist clientSessionContext()Lcom/android/org/conscrypt/ClientSessionContext;
    .registers 2

    .line 1206
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

    .line 1077
    invoke-super {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->close()V

    .line 1078
    return-void
.end method

.method private blacklist free()V
    .registers 2

    .line 1081
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/NativeSsl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1082
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/NativeSsl;->close()V

    .line 1083
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->guard:Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/org/conscrypt/Platform;->closeGuardClose(Ljava/lang/Object;)V

    .line 1085
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

    .line 173
    invoke-static {p0, p1, p1, p1}, Lcom/android/org/conscrypt/NativeSsl;->newInstance(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;)Lcom/android/org/conscrypt/NativeSsl;

    move-result-object v0

    return-object v0
.end method

.method private blacklist provideAfterHandshakeSession()Lcom/android/org/conscrypt/ConscryptSession;
    .registers 3

    .line 711
    iget v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_a

    invoke-static {}, Lcom/android/org/conscrypt/SSLNullSession;->getNullSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v0

    goto :goto_e

    .line 712
    :cond_a
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->provideSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v0

    .line 711
    :goto_e
    return-object v0
.end method

.method private blacklist provideHandshakeSession()Lcom/android/org/conscrypt/ConscryptSession;
    .registers 4

    .line 717
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 718
    :try_start_3
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_e

    const/4 v2, 0x5

    if-ge v1, v2, :cond_e

    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->activeSession:Lcom/android/org/conscrypt/ActiveSession;

    goto :goto_12

    .line 719
    :cond_e
    invoke-static {}, Lcom/android/org/conscrypt/SSLNullSession;->getNullSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v1

    :goto_12
    monitor-exit v0

    .line 718
    return-object v1

    .line 720
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method private blacklist provideSession()Lcom/android/org/conscrypt/ConscryptSession;
    .registers 5

    .line 682
    const/4 v0, 0x0

    .line 683
    .local v0, "handshakeCompleted":Z
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v1

    .line 684
    :try_start_4
    iget v2, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_15

    .line 685
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->closedSession:Lcom/android/org/conscrypt/SessionSnapshot;

    if-eqz v2, :cond_f

    goto :goto_13

    :cond_f
    invoke-static {}, Lcom/android/org/conscrypt/SSLNullSession;->getNullSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v2

    :goto_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_37

    return-object v2

    .line 689
    :cond_15
    const/4 v3, 0x5

    if-lt v2, v3, :cond_1a

    const/4 v2, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v2, 0x0

    :goto_1b
    move v0, v2

    .line 690
    if-nez v0, :cond_2b

    :try_start_1e
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 691
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->waitForHandshake()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_27} :catch_29
    .catchall {:try_start_1e .. :try_end_27} :catchall_37

    .line 692
    const/4 v0, 0x1

    goto :goto_2b

    .line 694
    :catch_29
    move-exception v2

    goto :goto_2c

    .line 696
    :cond_2b
    :goto_2b
    nop

    .line 697
    :goto_2c
    :try_start_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_37

    .line 699
    if-nez v0, :cond_34

    .line 702
    invoke-static {}, Lcom/android/org/conscrypt/SSLNullSession;->getNullSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v1

    return-object v1

    .line 705
    :cond_34
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->activeSession:Lcom/android/org/conscrypt/ActiveSession;

    return-object v1

    .line 697
    :catchall_37
    move-exception v2

    :try_start_38
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v2
.end method

.method private blacklist sessionContext()Lcom/android/org/conscrypt/AbstractSessionContext;
    .registers 2

    .line 1210
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

    .line 1061
    :try_start_0
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->blockGuardOnNetwork()V

    .line 1062
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->socket:Ljava/net/Socket;

    invoke-static {v1}, Lcom/android/org/conscrypt/Platform;->getFileDescriptor(Ljava/net/Socket;)Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/NativeSsl;->shutdown(Ljava/io/FileDescriptor;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_e} :catch_17
    .catchall {:try_start_0 .. :try_end_e} :catchall_f

    goto :goto_18

    .line 1071
    :catchall_f
    move-exception v0

    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->free()V

    .line 1072
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->closeUnderlyingSocket()V

    .line 1073
    throw v0

    .line 1063
    :catch_17
    move-exception v0

    .line 1071
    :goto_18
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->free()V

    .line 1072
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->closeUnderlyingSocket()V

    .line 1073
    nop

    .line 1074
    return-void
.end method

.method private blacklist transitionTo(I)V
    .registers 4
    .param p1, "newState"    # I

    .line 1214
    packed-switch p1, :pswitch_data_22

    goto :goto_1e

    .line 1216
    :pswitch_4
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/NativeSsl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1e

    iget v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1e

    const/16 v1, 0x8

    if-ge v0, v1, :cond_1e

    .line 1217
    new-instance v0, Lcom/android/org/conscrypt/SessionSnapshot;

    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->activeSession:Lcom/android/org/conscrypt/ActiveSession;

    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/SessionSnapshot;-><init>(Lcom/android/org/conscrypt/ConscryptSession;)V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->closedSession:Lcom/android/org/conscrypt/SessionSnapshot;

    .line 1227
    :cond_1e
    :goto_1e
    iput p1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    .line 1228
    return-void

    nop

    :pswitch_data_22
    .packed-switch 0x8
        :pswitch_4
    .end packed-switch
.end method

.method private blacklist waitForHandshake()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 497
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->startHandshake()V

    .line 499
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 500
    :goto_6
    :try_start_6
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_34

    const/4 v2, 0x5

    const/16 v3, 0x8

    if-eq v1, v2, :cond_28

    const/4 v2, 0x4

    if-eq v1, v2, :cond_28

    if-eq v1, v3, :cond_28

    .line 504
    :try_start_12
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_17} :catch_18
    .catchall {:try_start_12 .. :try_end_17} :catchall_34

    .line 508
    goto :goto_6

    .line 505
    :catch_18
    move-exception v1

    .line 506
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_19
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 507
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Interrupted waiting for handshake"

    invoke-direct {v2, v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    throw v2

    .line 511
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    :cond_28
    if-eq v1, v3, :cond_2c

    .line 514
    monitor-exit v0

    .line 515
    return-void

    .line 512
    :cond_2c
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "Socket is closed"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    throw v1

    .line 514
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_19 .. :try_end_36} :catchall_34

    throw v1
.end method


# virtual methods
.method public final blacklist chooseClientAlias(Ljavax/net/ssl/X509KeyManager;[Ljavax/security/auth/x500/X500Principal;[Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "keyManager"    # Ljavax/net/ssl/X509KeyManager;
    .param p2, "issuers"    # [Ljavax/security/auth/x500/X500Principal;
    .param p3, "keyTypes"    # [Ljava/lang/String;

    .line 1202
    invoke-interface {p1, p3, p2, p0}, Ljavax/net/ssl/X509KeyManager;->chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist chooseClientPSKIdentity(Lcom/android/org/conscrypt/PSKKeyManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "keyManager"    # Lcom/android/org/conscrypt/PSKKeyManager;
    .param p2, "identityHint"    # Ljava/lang/String;

    .line 1185
    invoke-interface {p1, p2, p0}, Lcom/android/org/conscrypt/PSKKeyManager;->chooseClientKeyIdentity(Ljava/lang/String;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist chooseServerAlias(Ljavax/net/ssl/X509KeyManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "keyManager"    # Ljavax/net/ssl/X509KeyManager;
    .param p2, "keyType"    # Ljava/lang/String;

    .line 1196
    const/4 v0, 0x0

    invoke-interface {p1, p2, v0, p0}, Ljavax/net/ssl/X509KeyManager;->chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist chooseServerPSKIdentityHint(Lcom/android/org/conscrypt/PSKKeyManager;)Ljava/lang/String;
    .registers 3
    .param p1, "keyManager"    # Lcom/android/org/conscrypt/PSKKeyManager;

    .line 1179
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

    .line 326
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/org/conscrypt/NativeSsl;->chooseClientCertificate([B[I[[B)V

    .line 327
    return-void
.end method

.method public final blacklist clientPSKKeyRequested(Ljava/lang/String;[B[B)I
    .registers 5
    .param p1, "identityHint"    # Ljava/lang/String;
    .param p2, "identity"    # [B
    .param p3, "key"    # [B

    .line 332
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/org/conscrypt/NativeSsl;->clientPSKKeyRequested(Ljava/lang/String;[B[B)I

    move-result v0

    return v0
.end method

.method public final whitelist test-api close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 997
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    if-nez v0, :cond_5

    .line 1000
    return-void

    .line 1003
    :cond_5
    monitor-enter v0

    .line 1004
    :try_start_6
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_e

    .line 1006
    monitor-exit v0

    return-void

    .line 1009
    :cond_e
    nop

    .line 1010
    .local v1, "oldState":I
    invoke-direct {p0, v2}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->transitionTo(I)V

    .line 1012
    if-nez v1, :cond_21

    .line 1016
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->free()V

    .line 1017
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->closeUnderlyingSocket()V

    .line 1019
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1020
    monitor-exit v0

    return-void

    .line 1023
    :cond_21
    const/4 v2, 0x5

    if-eq v1, v2, :cond_33

    const/4 v2, 0x4

    if-eq v1, v2, :cond_33

    .line 1028
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v2}, Lcom/android/org/conscrypt/NativeSsl;->interrupt()V

    .line 1030
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1031
    monitor-exit v0

    return-void

    .line 1034
    :cond_33
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1037
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->is:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;

    .line 1038
    .local v2, "sslInputStream":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;
    iget-object v3, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->os:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;

    move-object v1, v3

    .line 1039
    .local v1, "sslOutputStream":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_6 .. :try_end_3e} :catchall_55

    .line 1042
    if-nez v2, :cond_42

    if-eqz v1, :cond_47

    .line 1043
    :cond_42
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/NativeSsl;->interrupt()V

    .line 1049
    :cond_47
    if-eqz v2, :cond_4c

    .line 1050
    invoke-virtual {v2}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->awaitPendingOps()V

    .line 1052
    :cond_4c
    if-eqz v1, :cond_51

    .line 1053
    invoke-virtual {v1}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;->awaitPendingOps()V

    .line 1056
    :cond_51
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->shutdownAndFreeSslNative()V

    .line 1057
    return-void

    .line 1039
    .end local v1    # "sslOutputStream":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;
    .end local v2    # "sslInputStream":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;
    :catchall_55
    move-exception v1

    :try_start_56
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

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

    .line 918
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 919
    :try_start_3
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_15

    const/16 v2, 0x8

    if-ne v1, v2, :cond_d

    goto :goto_15

    .line 922
    :cond_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_18

    .line 923
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/org/conscrypt/NativeSsl;->exportKeyingMaterial(Ljava/lang/String;[BI)[B

    move-result-object v0

    return-object v0

    .line 920
    :cond_15
    :goto_15
    const/4 v1, 0x0

    :try_start_16
    monitor-exit v0

    return-object v1

    .line 922
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method protected final whitelist test-api finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1107
    :try_start_0
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->guard:Ljava/lang/Object;

    if-eqz v0, :cond_7

    .line 1108
    invoke-static {v0}, Lcom/android/org/conscrypt/Platform;->closeGuardWarnIfOpen(Ljava/lang/Object;)V

    .line 1110
    :cond_7
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    if-eqz v0, :cond_16

    .line 1111
    monitor-enter v0
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_1b

    .line 1112
    const/16 v1, 0x8

    :try_start_e
    invoke-direct {p0, v1}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->transitionTo(I)V

    .line 1113
    monitor-exit v0

    goto :goto_16

    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_13

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    :try_start_15
    throw v1
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_1b

    .line 1116
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    :cond_16
    :goto_16
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1117
    nop

    .line 1118
    return-void

    .line 1116
    :catchall_1b
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1117
    throw v0
.end method

.method final blacklist getActiveSession()Ljavax/net/ssl/SSLSession;
    .registers 2

    .line 725
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->activeSession:Lcom/android/org/conscrypt/ActiveSession;

    return-object v0
.end method

.method public final whitelist test-api getApplicationProtocol()Ljava/lang/String;
    .registers 2

    .line 1152
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->provideAfterHandshakeSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/org/conscrypt/ConscryptSession;->getApplicationProtocol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final blacklist getApplicationProtocols()[Ljava/lang/String;
    .registers 2

    .line 1147
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

    .line 849
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->getUseClientMode()Z

    move-result v0

    if-nez v0, :cond_21

    .line 853
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 854
    :try_start_9
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_16

    .line 858
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_1e

    .line 859
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/NativeSsl;->getTlsChannelId()[B

    move-result-object v0

    return-object v0

    .line 855
    :cond_16
    :try_start_16
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Channel ID is only available after handshake completes"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    throw v1

    .line 858
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_1e

    throw v1

    .line 850
    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Client mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api getEnableSessionCreation()Z
    .registers 2

    .line 745
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEnableSessionCreation()Z

    move-result v0

    return v0
.end method

.method public final whitelist test-api getEnabledCipherSuites()[Ljava/lang/String;
    .registers 2

    .line 760
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getEnabledProtocols()[Ljava/lang/String;
    .registers 2

    .line 775
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getHandshakeApplicationProtocol()Ljava/lang/String;
    .registers 4

    .line 1157
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 1158
    :try_start_3
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_10

    const/4 v2, 0x5

    if-ge v1, v2, :cond_10

    .line 1159
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->getApplicationProtocol()Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    monitor-exit v0

    .line 1158
    return-object v1

    .line 1160
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public final whitelist test-api getHandshakeSession()Ljavax/net/ssl/SSLSession;
    .registers 4

    .line 730
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 731
    :try_start_3
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1b

    const/4 v2, 0x5

    if-ge v1, v2, :cond_1b

    .line 732
    new-instance v1, Lcom/android/org/conscrypt/ExternalSession;

    new-instance v2, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$2;

    invoke-direct {v2, p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$2;-><init>(Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)V

    invoke-direct {v1, v2}, Lcom/android/org/conscrypt/ExternalSession;-><init>(Lcom/android/org/conscrypt/ExternalSession$Provider;)V

    invoke-static {v1}, Lcom/android/org/conscrypt/Platform;->wrapSSLSession(Lcom/android/org/conscrypt/ExternalSession;)Ljavax/net/ssl/SSLSession;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 739
    :cond_1b
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 740
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public final whitelist test-api getInputStream()Ljava/io/InputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 442
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->checkOpen()V

    .line 445
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 446
    :try_start_6
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1e

    .line 450
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->is:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;

    if-nez v1, :cond_17

    .line 451
    new-instance v1, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;

    invoke-direct {v1, p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;-><init>(Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)V

    iput-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->is:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;

    .line 454
    :cond_17
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->is:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;

    .line 455
    .local v1, "returnVal":Ljava/io/InputStream;
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_26

    .line 460
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->waitForHandshake()V

    .line 461
    return-object v1

    .line 447
    .end local v1    # "returnVal":Ljava/io/InputStream;
    :cond_1e
    :try_start_1e
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "Socket is closed."

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    throw v1

    .line 455
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_1e .. :try_end_28} :catchall_26

    throw v1
.end method

.method public final whitelist test-api getNeedClientAuth()Z
    .registers 2

    .line 949
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getNeedClientAuth()Z

    move-result v0

    return v0
.end method

.method public final whitelist test-api getOutputStream()Ljava/io/OutputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 466
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->checkOpen()V

    .line 469
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 470
    :try_start_6
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1e

    .line 474
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->os:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;

    if-nez v1, :cond_17

    .line 475
    new-instance v1, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;

    invoke-direct {v1, p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;-><init>(Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)V

    iput-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->os:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;

    .line 478
    :cond_17
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->os:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;

    .line 479
    .local v1, "returnVal":Ljava/io/OutputStream;
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_26

    .line 484
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->waitForHandshake()V

    .line 485
    return-object v1

    .line 471
    .end local v1    # "returnVal":Ljava/io/OutputStream;
    :cond_1e
    :try_start_1e
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "Socket is closed."

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    throw v1

    .line 479
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

    .line 1191
    invoke-interface {p1, p2, p3, p0}, Lcom/android/org/conscrypt/PSKKeyManager;->getKey(Ljava/lang/String;Ljava/lang/String;Ljava/net/Socket;)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getSSLParameters()Ljavax/net/ssl/SSLParameters;
    .registers 3

    .line 1165
    invoke-super {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v0

    .line 1166
    .local v0, "params":Ljavax/net/ssl/SSLParameters;
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/Platform;->getSSLParameters(Ljavax/net/ssl/SSLParameters;Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/AbstractConscryptSocket;)V

    .line 1167
    return-object v0
.end method

.method public final whitelist test-api getSession()Ljavax/net/ssl/SSLSession;
    .registers 2

    .line 678
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->externalSession:Ljavax/net/ssl/SSLSession;

    return-object v0
.end method

.method public final blacklist getSoWriteTimeout()I
    .registers 2

    .line 977
    iget v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->writeTimeoutMilliseconds:I

    return v0
.end method

.method public final whitelist test-api getSupportedCipherSuites()[Ljava/lang/String;
    .registers 2

    .line 755
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getSupportedProtocols()[Ljava/lang/String;
    .registers 2

    .line 770
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist getTlsUnique()[B
    .registers 2

    .line 913
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/NativeSsl;->getTlsUnique()[B

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getUseClientMode()Z
    .registers 2

    .line 928
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getUseClientMode()Z

    move-result v0

    return v0
.end method

.method public final whitelist test-api getWantClientAuth()Z
    .registers 2

    .line 944
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getWantClientAuth()Z

    move-result v0

    return v0
.end method

.method public final blacklist onNewSessionEstablished(J)V
    .registers 6
    .param p1, "sslSessionNativePtr"    # J

    .line 381
    :try_start_0
    invoke-static {p1, p2}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_SESSION_up_ref(J)V

    .line 386
    new-instance v0, Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;

    invoke-direct {v0, p1, p2}, Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;-><init>(J)V

    .line 388
    .local v0, "ref":Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->activeSession:Lcom/android/org/conscrypt/ActiveSession;

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeSslSession;->newInstance(Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;Lcom/android/org/conscrypt/ConscryptSession;)Lcom/android/org/conscrypt/NativeSslSession;

    move-result-object v1

    .line 391
    .local v1, "nativeSession":Lcom/android/org/conscrypt/NativeSslSession;
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sessionContext()Lcom/android/org/conscrypt/AbstractSessionContext;

    move-result-object v2

    .line 392
    .local v2, "ctx":Lcom/android/org/conscrypt/AbstractSessionContext;
    invoke-virtual {v2, v1}, Lcom/android/org/conscrypt/AbstractSessionContext;->cacheSession(Lcom/android/org/conscrypt/NativeSslSession;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    .line 395
    .end local v0    # "ref":Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;
    .end local v1    # "nativeSession":Lcom/android/org/conscrypt/NativeSslSession;
    .end local v2    # "ctx":Lcom/android/org/conscrypt/AbstractSessionContext;
    goto :goto_17

    .line 393
    :catch_16
    move-exception v0

    .line 396
    :goto_17
    return-void
.end method

.method public final blacklist onSSLStateChange(II)V
    .registers 10
    .param p1, "type"    # I
    .param p2, "val"    # I

    .line 344
    const/16 v0, 0x20

    if-eq p1, v0, :cond_5

    .line 346
    return-void

    .line 351
    :cond_5
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->activeSession:Lcom/android/org/conscrypt/ActiveSession;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/ActiveSession;->getProtocol()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->activeSession:Lcom/android/org/conscrypt/ActiveSession;

    .line 352
    invoke-virtual {v2}, Lcom/android/org/conscrypt/ActiveSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v2

    .line 353
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->getMillisSinceBoot()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->handshakeStartedMillis:J

    sub-long/2addr v3, v5

    .line 351
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/org/conscrypt/Platform;->countTlsHandshake(ZLjava/lang/String;Ljava/lang/String;J)V

    .line 356
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 357
    :try_start_1f
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_27

    .line 359
    monitor-exit v0

    return-void

    .line 364
    :cond_27
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->transitionTo(I)V

    .line 365
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_1f .. :try_end_2c} :catchall_3c

    .line 368
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->notifyHandshakeCompletedListeners()V

    .line 370
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v1

    .line 372
    :try_start_32
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 373
    monitor-exit v1

    .line 374
    return-void

    .line 373
    :catchall_39
    move-exception v0

    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_32 .. :try_end_3b} :catchall_39

    throw v0

    .line 365
    :catchall_3c
    move-exception v1

    :try_start_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method public blacklist selectApplicationProtocol([B)I
    .registers 4
    .param p1, "protocols"    # [B

    .line 1133
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getApplicationProtocolSelector()Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;

    move-result-object v0

    .line 1134
    .local v0, "adapter":Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;
    if-nez v0, :cond_a

    .line 1135
    const/4 v1, 0x3

    return v1

    .line 1137
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

    .line 406
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 407
    :try_start_3
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/NativeSsl;->configureServerCertificate()V

    .line 408
    monitor-exit v0

    .line 409
    return-void

    .line 408
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

    .line 338
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/org/conscrypt/NativeSsl;->serverPSKKeyRequested(Ljava/lang/String;Ljava/lang/String;[B)I

    move-result v0

    return v0
.end method

.method public final blacklist serverSessionRequested([B)J
    .registers 4
    .param p1, "id"    # [B

    .line 401
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final blacklist setApplicationProtocolSelector(Lcom/android/org/conscrypt/ApplicationProtocolSelector;)V
    .registers 3
    .param p1, "selector"    # Lcom/android/org/conscrypt/ApplicationProtocolSelector;

    .line 1122
    nop

    .line 1123
    if-nez p1, :cond_5

    const/4 v0, 0x0

    goto :goto_a

    :cond_5
    new-instance v0, Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;

    invoke-direct {v0, p0, p1}, Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;-><init>(Ljavax/net/ssl/SSLSocket;Lcom/android/org/conscrypt/ApplicationProtocolSelector;)V

    .line 1122
    :goto_a
    invoke-virtual {p0, v0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->setApplicationProtocolSelector(Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;)V

    .line 1124
    return-void
.end method

.method final blacklist setApplicationProtocolSelector(Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;)V
    .registers 3
    .param p1, "selector"    # Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;

    .line 1128
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setApplicationProtocolSelector(Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;)V

    .line 1129
    return-void
.end method

.method final blacklist setApplicationProtocols([Ljava/lang/String;)V
    .registers 3
    .param p1, "protocols"    # [Ljava/lang/String;

    .line 1142
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setApplicationProtocols([Ljava/lang/String;)V

    .line 1143
    return-void
.end method

.method public final blacklist setChannelIdEnabled(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .line 823
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->getUseClientMode()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 827
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 828
    :try_start_9
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    if-nez v1, :cond_13

    .line 833
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_1b

    .line 834
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    iput-boolean p1, v0, Lcom/android/org/conscrypt/SSLParametersImpl;->channelIdEnabled:Z

    .line 835
    return-void

    .line 829
    :cond_13
    :try_start_13
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not enable/disable Channel ID after the initial handshake has begun."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    .end local p1    # "enabled":Z
    throw v1

    .line 833
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    .restart local p1    # "enabled":Z
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_1b

    throw v1

    .line 824
    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Client mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final blacklist test-api setChannelIdPrivateKey(Ljava/security/PrivateKey;)V
    .registers 5
    .param p1, "privateKey"    # Ljava/security/PrivateKey;

    .line 876
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->getUseClientMode()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 880
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 881
    :try_start_9
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    if-nez v1, :cond_42

    .line 886
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_4a

    .line 888
    if-nez p1, :cond_19

    .line 889
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/org/conscrypt/SSLParametersImpl;->channelIdEnabled:Z

    .line 890
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->channelIdPrivateKey:Lcom/android/org/conscrypt/OpenSSLKey;

    goto :goto_41

    .line 892
    :cond_19
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/org/conscrypt/SSLParametersImpl;->channelIdEnabled:Z

    .line 894
    const/4 v0, 0x0

    .line 895
    .local v0, "ecParams":Ljava/security/spec/ECParameterSpec;
    :try_start_1f
    instance-of v1, p1, Ljava/security/interfaces/ECKey;

    if-eqz v1, :cond_2b

    .line 896
    move-object v1, p1

    check-cast v1, Ljava/security/interfaces/ECKey;

    invoke-interface {v1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    move-object v0, v1

    .line 898
    :cond_2b
    if-nez v0, :cond_38

    .line 900
    const-string v1, "prime256v1"

    .line 901
    invoke-static {v1}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getCurveByName(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getECParameterSpec()Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    move-object v0, v1

    .line 903
    :cond_38
    nop

    .line 904
    invoke-static {p1, v0}, Lcom/android/org/conscrypt/OpenSSLKey;->fromECPrivateKeyForTLSStackOnly(Ljava/security/PrivateKey;Ljava/security/spec/ECParameterSpec;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->channelIdPrivateKey:Lcom/android/org/conscrypt/OpenSSLKey;
    :try_end_3f
    .catch Ljava/security/InvalidKeyException; {:try_start_1f .. :try_end_3f} :catch_40

    .line 907
    .end local v0    # "ecParams":Ljava/security/spec/ECParameterSpec;
    goto :goto_41

    .line 905
    :catch_40
    move-exception v0

    .line 909
    :goto_41
    return-void

    .line 882
    :cond_42
    :try_start_42
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not change Channel ID private key after the initial handshake has begun."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    .end local p1    # "privateKey":Ljava/security/PrivateKey;
    throw v1

    .line 886
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    .restart local p1    # "privateKey":Ljava/security/PrivateKey;
    :catchall_4a
    move-exception v1

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_4a

    throw v1

    .line 877
    :cond_4d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Server mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api setEnableSessionCreation(Z)V
    .registers 3
    .param p1, "flag"    # Z

    .line 750
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setEnableSessionCreation(Z)V

    .line 751
    return-void
.end method

.method public final whitelist test-api setEnabledCipherSuites([Ljava/lang/String;)V
    .registers 3
    .param p1, "suites"    # [Ljava/lang/String;

    .line 765
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 766
    return-void
.end method

.method public final whitelist test-api setEnabledProtocols([Ljava/lang/String;)V
    .registers 3
    .param p1, "protocols"    # [Ljava/lang/String;

    .line 780
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setEnabledProtocols([Ljava/lang/String;)V

    .line 781
    return-void
.end method

.method public final blacklist test-api setHandshakeTimeout(I)V
    .registers 2
    .param p1, "handshakeTimeoutMilliseconds"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 986
    iput p1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->handshakeTimeoutMilliseconds:I

    .line 987
    return-void
.end method

.method public final greylist-max-q test-api setHostname(Ljava/lang/String;)V
    .registers 4
    .param p1, "hostname"    # Ljava/lang/String;

    .line 809
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    if-eqz p1, :cond_6

    const/4 v1, 0x1

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setUseSni(Z)V

    .line 810
    invoke-super {p0, p1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setHostname(Ljava/lang/String;)V

    .line 811
    return-void
.end method

.method public final whitelist test-api setNeedClientAuth(Z)V
    .registers 3
    .param p1, "need"    # Z

    .line 954
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setNeedClientAuth(Z)V

    .line 955
    return-void
.end method

.method public final whitelist test-api setSSLParameters(Ljavax/net/ssl/SSLParameters;)V
    .registers 3
    .param p1, "p"    # Ljavax/net/ssl/SSLParameters;

    .line 1172
    invoke-super {p0, p1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    .line 1173
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-static {p1, v0, p0}, Lcom/android/org/conscrypt/Platform;->setSSLParameters(Ljavax/net/ssl/SSLParameters;Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/AbstractConscryptSocket;)V

    .line 1174
    return-void
.end method

.method public final blacklist test-api setSoWriteTimeout(I)V
    .registers 4
    .param p1, "writeTimeoutMilliseconds"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 967
    iput p1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->writeTimeoutMilliseconds:I

    .line 969
    int-to-long v0, p1

    invoke-static {p0, v0, v1}, Lcom/android/org/conscrypt/Platform;->setSocketWriteTimeout(Ljava/net/Socket;J)V

    .line 970
    return-void
.end method

.method public final whitelist test-api setUseClientMode(Z)V
    .registers 5
    .param p1, "mode"    # Z

    .line 933
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 934
    :try_start_3
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    if-nez v1, :cond_e

    .line 938
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_16

    .line 939
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setUseClientMode(Z)V

    .line 940
    return-void

    .line 935
    :cond_e
    :try_start_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Could not change the mode after the initial handshake has begun."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    .end local p1    # "mode":Z
    throw v1

    .line 938
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    .restart local p1    # "mode":Z
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_16

    throw v1
.end method

.method public final greylist-max-q test-api setUseSessionTickets(Z)V
    .registers 3
    .param p1, "useSessionTickets"    # Z

    .line 794
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setUseSessionTickets(Z)V

    .line 795
    return-void
.end method

.method public final whitelist test-api setWantClientAuth(Z)V
    .registers 3
    .param p1, "want"    # Z

    .line 959
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setWantClientAuth(Z)V

    .line 960
    return-void
.end method

.method public final whitelist test-api startHandshake()V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->checkOpen()V

    .line 186
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 187
    :try_start_6
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    if-nez v1, :cond_1ae

    .line 188
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->getMillisSinceBoot()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->handshakeStartedMillis:J

    .line 189
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->transitionTo(I)V

    .line 195
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_1b0

    .line 197
    const/4 v0, 0x1

    .line 199
    .local v0, "releaseResources":Z
    const/4 v2, 0x0

    const/16 v3, 0x8

    :try_start_19
    iget-object v4, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->guard:Ljava/lang/Object;

    const-string v5, "close"

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/Platform;->closeGuardOpen(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    iget-object v4, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->getHostname()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->channelIdPrivateKey:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v4, v5, v6}, Lcom/android/org/conscrypt/NativeSsl;->initialize(Ljava/lang/String;Lcom/android/org/conscrypt/OpenSSLKey;)V

    .line 206
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->getUseClientMode()Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 207
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->clientSessionContext()Lcom/android/org/conscrypt/ClientSessionContext;

    move-result-object v4

    .line 208
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->getHostnameOrIP()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->getPort()I

    move-result v6

    iget-object v7, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 207
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/org/conscrypt/ClientSessionContext;->getCachedSession(Ljava/lang/String;ILcom/android/org/conscrypt/SSLParametersImpl;)Lcom/android/org/conscrypt/NativeSslSession;

    move-result-object v4

    .line 209
    .local v4, "cachedSession":Lcom/android/org/conscrypt/NativeSslSession;
    if-eqz v4, :cond_4a

    .line 210
    iget-object v5, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v4, v5}, Lcom/android/org/conscrypt/NativeSslSession;->offerToResume(Lcom/android/org/conscrypt/NativeSsl;)V

    .line 215
    .end local v4    # "cachedSession":Lcom/android/org/conscrypt/NativeSslSession;
    :cond_4a
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->getSoTimeout()I

    move-result v4

    .line 216
    .local v4, "savedReadTimeoutMilliseconds":I
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->getSoWriteTimeout()I

    move-result v5

    .line 217
    .local v5, "savedWriteTimeoutMilliseconds":I
    iget v6, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->handshakeTimeoutMilliseconds:I

    if-ltz v6, :cond_5e

    .line 218
    invoke-virtual {p0, v6}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->setSoTimeout(I)V

    .line 219
    iget v6, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->handshakeTimeoutMilliseconds:I

    invoke-virtual {p0, v6}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->setSoWriteTimeout(I)V

    .line 222
    :cond_5e
    iget-object v6, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v6
    :try_end_61
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_19 .. :try_end_61} :catch_171
    .catchall {:try_start_19 .. :try_end_61} :catchall_16f

    .line 223
    :try_start_61
    iget v7, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    if-ne v7, v3, :cond_7e

    .line 224
    monitor-exit v6
    :try_end_66
    .catchall {:try_start_61 .. :try_end_66} :catchall_16c

    .line 301
    if-eqz v0, :cond_7d

    .line 302
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v1

    .line 308
    :try_start_6b
    invoke-direct {p0, v3}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->transitionTo(I)V

    .line 309
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 310
    monitor-exit v1
    :try_end_74
    .catchall {:try_start_6b .. :try_end_74} :catchall_7a

    .line 313
    :try_start_74
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->shutdownAndFreeSslNative()V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_77} :catch_78

    .line 316
    goto :goto_7d

    .line 314
    :catch_78
    move-exception v1

    goto :goto_7d

    .line 310
    :catchall_7a
    move-exception v2

    :try_start_7b
    monitor-exit v1
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7a

    throw v2

    .line 224
    :cond_7d
    :goto_7d
    return-void

    .line 226
    :cond_7e
    :try_start_7e
    monitor-exit v6
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_16c

    .line 229
    const/4 v6, 0x1

    :try_start_80
    iget-object v7, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    iget-object v8, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->socket:Ljava/net/Socket;

    invoke-static {v8}, Lcom/android/org/conscrypt/Platform;->getFileDescriptor(Ljava/net/Socket;)Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->getSoTimeout()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/android/org/conscrypt/NativeSsl;->doHandshake(Ljava/io/FileDescriptor;I)V

    .line 232
    iget-object v7, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->activeSession:Lcom/android/org/conscrypt/ActiveSession;

    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->getHostnameOrIP()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->getPort()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/android/org/conscrypt/ActiveSession;->onPeerCertificateAvailable(Ljava/lang/String;I)V
    :try_end_9c
    .catch Ljava/security/cert/CertificateException; {:try_start_80 .. :try_end_9c} :catch_147
    .catch Ljavax/net/ssl/SSLException; {:try_start_80 .. :try_end_9c} :catch_103
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_80 .. :try_end_9c} :catch_171
    .catchall {:try_start_80 .. :try_end_9c} :catchall_16f

    .line 264
    nop

    .line 266
    :try_start_9d
    iget-object v7, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v7
    :try_end_a0
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_9d .. :try_end_a0} :catch_171
    .catchall {:try_start_9d .. :try_end_a0} :catchall_16f

    .line 267
    :try_start_a0
    iget v8, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    if-ne v8, v3, :cond_bd

    .line 268
    monitor-exit v7
    :try_end_a5
    .catchall {:try_start_a0 .. :try_end_a5} :catchall_100

    .line 301
    if-eqz v0, :cond_bc

    .line 302
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v1

    .line 308
    :try_start_aa
    invoke-direct {p0, v3}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->transitionTo(I)V

    .line 309
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 310
    monitor-exit v1
    :try_end_b3
    .catchall {:try_start_aa .. :try_end_b3} :catchall_b9

    .line 313
    :try_start_b3
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->shutdownAndFreeSslNative()V
    :try_end_b6
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_b6} :catch_b7

    .line 316
    goto :goto_bc

    .line 314
    :catch_b7
    move-exception v1

    goto :goto_bc

    .line 310
    :catchall_b9
    move-exception v2

    :try_start_ba
    monitor-exit v1
    :try_end_bb
    .catchall {:try_start_ba .. :try_end_bb} :catchall_b9

    throw v2

    .line 268
    :cond_bc
    :goto_bc
    return-void

    .line 270
    :cond_bd
    :try_start_bd
    monitor-exit v7
    :try_end_be
    .catchall {:try_start_bd .. :try_end_be} :catchall_100

    .line 273
    :try_start_be
    iget v7, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->handshakeTimeoutMilliseconds:I

    if-ltz v7, :cond_c8

    .line 274
    invoke-virtual {p0, v4}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->setSoTimeout(I)V

    .line 275
    invoke-virtual {p0, v5}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->setSoWriteTimeout(I)V

    .line 278
    :cond_c8
    iget-object v7, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v7
    :try_end_cb
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_be .. :try_end_cb} :catch_171
    .catchall {:try_start_be .. :try_end_cb} :catchall_16f

    .line 279
    :try_start_cb
    iget v8, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    if-ne v8, v3, :cond_d0

    goto :goto_d1

    :cond_d0
    move v6, v2

    :goto_d1
    move v0, v6

    .line 281
    if-ne v8, v1, :cond_d9

    .line 282
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->transitionTo(I)V

    goto :goto_dd

    .line 284
    :cond_d9
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->transitionTo(I)V

    .line 287
    :goto_dd
    if-nez v0, :cond_e4

    .line 290
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 292
    :cond_e4
    monitor-exit v7
    :try_end_e5
    .catchall {:try_start_cb .. :try_end_e5} :catchall_fd

    .line 301
    .end local v4    # "savedReadTimeoutMilliseconds":I
    .end local v5    # "savedWriteTimeoutMilliseconds":I
    if-eqz v0, :cond_fc

    .line 302
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v1

    .line 308
    :try_start_ea
    invoke-direct {p0, v3}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->transitionTo(I)V

    .line 309
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 310
    monitor-exit v1
    :try_end_f3
    .catchall {:try_start_ea .. :try_end_f3} :catchall_f9

    .line 313
    :try_start_f3
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->shutdownAndFreeSslNative()V
    :try_end_f6
    .catch Ljava/io/IOException; {:try_start_f3 .. :try_end_f6} :catch_f7

    .line 316
    :goto_f6
    goto :goto_fc

    .line 314
    :catch_f7
    move-exception v1

    goto :goto_f6

    .line 310
    :catchall_f9
    move-exception v2

    :try_start_fa
    monitor-exit v1
    :try_end_fb
    .catchall {:try_start_fa .. :try_end_fb} :catchall_f9

    throw v2

    .line 319
    :cond_fc
    :goto_fc
    return-void

    .line 292
    .restart local v4    # "savedReadTimeoutMilliseconds":I
    .restart local v5    # "savedWriteTimeoutMilliseconds":I
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
    :try_end_100
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_ff .. :try_end_100} :catch_171
    .catchall {:try_start_ff .. :try_end_100} :catchall_16f

    .line 270
    .restart local v0    # "releaseResources":Z
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    :catchall_100
    move-exception v1

    :try_start_101
    monitor-exit v7
    :try_end_102
    .catchall {:try_start_101 .. :try_end_102} :catchall_100

    .end local v0    # "releaseResources":Z
    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    :try_start_102
    throw v1

    .line 240
    .restart local v0    # "releaseResources":Z
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    :catch_103
    move-exception v1

    .line 248
    .local v1, "e":Ljavax/net/ssl/SSLException;
    iget-object v7, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v7
    :try_end_107
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_102 .. :try_end_107} :catch_171
    .catchall {:try_start_102 .. :try_end_107} :catchall_16f

    .line 249
    :try_start_107
    iget v8, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    if-ne v8, v3, :cond_124

    .line 250
    monitor-exit v7
    :try_end_10c
    .catchall {:try_start_107 .. :try_end_10c} :catchall_144

    .line 301
    if-eqz v0, :cond_123

    .line 302
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v2

    .line 308
    :try_start_111
    invoke-direct {p0, v3}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->transitionTo(I)V

    .line 309
    iget-object v3, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 310
    monitor-exit v2
    :try_end_11a
    .catchall {:try_start_111 .. :try_end_11a} :catchall_120

    .line 313
    :try_start_11a
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->shutdownAndFreeSslNative()V
    :try_end_11d
    .catch Ljava/io/IOException; {:try_start_11a .. :try_end_11d} :catch_11e

    .line 316
    goto :goto_123

    .line 314
    :catch_11e
    move-exception v2

    goto :goto_123

    .line 310
    :catchall_120
    move-exception v3

    :try_start_121
    monitor-exit v2
    :try_end_122
    .catchall {:try_start_121 .. :try_end_122} :catchall_120

    throw v3

    .line 250
    :cond_123
    :goto_123
    return-void

    .line 252
    :cond_124
    :try_start_124
    monitor-exit v7
    :try_end_125
    .catchall {:try_start_124 .. :try_end_125} :catchall_144

    .line 255
    :try_start_125
    invoke-virtual {v1}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v7

    .line 257
    .local v7, "message":Ljava/lang/String;
    const-string v8, "unexpected CCS"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_142

    .line 258
    const-string v8, "ssl_unexpected_ccs: host=%s"

    new-array v6, v6, [Ljava/lang/Object;

    .line 259
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->getHostnameOrIP()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v2

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 260
    .local v6, "logMessage":Ljava/lang/String;
    invoke-static {v6}, Lcom/android/org/conscrypt/Platform;->logEvent(Ljava/lang/String;)V

    .line 263
    .end local v6    # "logMessage":Ljava/lang/String;
    :cond_142
    nop

    .end local v0    # "releaseResources":Z
    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    throw v1
    :try_end_144
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_125 .. :try_end_144} :catch_171
    .catchall {:try_start_125 .. :try_end_144} :catchall_16f

    .line 252
    .end local v7    # "message":Ljava/lang/String;
    .restart local v0    # "releaseResources":Z
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    :catchall_144
    move-exception v6

    :try_start_145
    monitor-exit v7
    :try_end_146
    .catchall {:try_start_145 .. :try_end_146} :catchall_144

    .end local v0    # "releaseResources":Z
    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    :try_start_146
    throw v6

    .line 233
    .end local v1    # "e":Ljavax/net/ssl/SSLException;
    .restart local v0    # "releaseResources":Z
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    :catch_147
    move-exception v1

    .line 234
    .local v1, "e":Ljava/security/cert/CertificateException;
    iget-object v6, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->activeSession:Lcom/android/org/conscrypt/ActiveSession;

    invoke-virtual {v6}, Lcom/android/org/conscrypt/ActiveSession;->getProtocol()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->activeSession:Lcom/android/org/conscrypt/ActiveSession;

    .line 235
    invoke-virtual {v7}, Lcom/android/org/conscrypt/ActiveSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v7

    .line 236
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->getMillisSinceBoot()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->handshakeStartedMillis:J

    sub-long/2addr v8, v10

    .line 234
    invoke-static {v2, v6, v7, v8, v9}, Lcom/android/org/conscrypt/Platform;->countTlsHandshake(ZLjava/lang/String;Ljava/lang/String;J)V

    .line 237
    new-instance v6, Ljavax/net/ssl/SSLHandshakeException;

    invoke-virtual {v1}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    .line 238
    .local v6, "wrapper":Ljavax/net/ssl/SSLHandshakeException;
    invoke-virtual {v6, v1}, Ljavax/net/ssl/SSLHandshakeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 239
    nop

    .end local v0    # "releaseResources":Z
    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    throw v6
    :try_end_16c
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_146 .. :try_end_16c} :catch_171
    .catchall {:try_start_146 .. :try_end_16c} :catchall_16f

    .line 226
    .end local v1    # "e":Ljava/security/cert/CertificateException;
    .end local v6    # "wrapper":Ljavax/net/ssl/SSLHandshakeException;
    .restart local v0    # "releaseResources":Z
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    :catchall_16c
    move-exception v1

    :try_start_16d
    monitor-exit v6
    :try_end_16e
    .catchall {:try_start_16d .. :try_end_16e} :catchall_16c

    .end local v0    # "releaseResources":Z
    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    :try_start_16e
    throw v1
    :try_end_16f
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_16e .. :try_end_16f} :catch_171
    .catchall {:try_start_16e .. :try_end_16f} :catchall_16f

    .line 301
    .end local v4    # "savedReadTimeoutMilliseconds":I
    .end local v5    # "savedWriteTimeoutMilliseconds":I
    .restart local v0    # "releaseResources":Z
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    :catchall_16f
    move-exception v1

    goto :goto_196

    .line 293
    :catch_171
    move-exception v1

    .line 294
    .local v1, "e":Ljavax/net/ssl/SSLProtocolException;
    :try_start_172
    iget-object v4, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->activeSession:Lcom/android/org/conscrypt/ActiveSession;

    invoke-virtual {v4}, Lcom/android/org/conscrypt/ActiveSession;->getProtocol()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->activeSession:Lcom/android/org/conscrypt/ActiveSession;

    .line 295
    invoke-virtual {v5}, Lcom/android/org/conscrypt/ActiveSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v5

    .line 296
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->getMillisSinceBoot()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->handshakeStartedMillis:J

    sub-long/2addr v6, v8

    .line 294
    invoke-static {v2, v4, v5, v6, v7}, Lcom/android/org/conscrypt/Platform;->countTlsHandshake(ZLjava/lang/String;Ljava/lang/String;J)V

    .line 298
    new-instance v2, Ljavax/net/ssl/SSLHandshakeException;

    const-string v4, "Handshake failed"

    invoke-direct {v2, v4}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljavax/net/ssl/SSLHandshakeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/SSLHandshakeException;

    .end local v0    # "releaseResources":Z
    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    throw v2
    :try_end_196
    .catchall {:try_start_172 .. :try_end_196} :catchall_16f

    .line 301
    .end local v1    # "e":Ljavax/net/ssl/SSLProtocolException;
    .restart local v0    # "releaseResources":Z
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    :goto_196
    if-eqz v0, :cond_1ad

    .line 302
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v2

    .line 308
    :try_start_19b
    invoke-direct {p0, v3}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->transitionTo(I)V

    .line 309
    iget-object v3, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 310
    monitor-exit v2
    :try_end_1a4
    .catchall {:try_start_19b .. :try_end_1a4} :catchall_1aa

    .line 313
    :try_start_1a4
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->shutdownAndFreeSslNative()V
    :try_end_1a7
    .catch Ljava/io/IOException; {:try_start_1a4 .. :try_end_1a7} :catch_1a8

    .line 316
    goto :goto_1ad

    .line 314
    :catch_1a8
    move-exception v2

    goto :goto_1ad

    .line 310
    :catchall_1aa
    move-exception v1

    :try_start_1ab
    monitor-exit v2
    :try_end_1ac
    .catchall {:try_start_1ab .. :try_end_1ac} :catchall_1aa

    throw v1

    .line 318
    :cond_1ad
    :goto_1ad
    throw v1

    .line 193
    .end local v0    # "releaseResources":Z
    :cond_1ae
    :try_start_1ae
    monitor-exit v0

    return-void

    .line 195
    :catchall_1b0
    move-exception v1

    monitor-exit v0
    :try_end_1b2
    .catchall {:try_start_1ae .. :try_end_1b2} :catchall_1b0

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

    .line 415
    if-eqz p1, :cond_40

    :try_start_2
    array-length v0, p1

    if-eqz v0, :cond_40

    .line 418
    invoke-static {p1}, Lcom/android/org/conscrypt/SSLUtils;->decodeX509CertificateChain([[B)[Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 420
    .local v0, "peerCertChain":[Ljava/security/cert/X509Certificate;
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->getX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v1

    .line 421
    .local v1, "x509tm":Ljavax/net/ssl/X509TrustManager;
    if-eqz v1, :cond_38

    .line 425
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->activeSession:Lcom/android/org/conscrypt/ActiveSession;

    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->getHostnameOrIP()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->getPort()I

    move-result v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/org/conscrypt/ActiveSession;->onPeerCertificatesReceived(Ljava/lang/String;I[Ljava/security/cert/X509Certificate;)V

    .line 427
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->getUseClientMode()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 428
    invoke-static {v1, v0, p2, p0}, Lcom/android/org/conscrypt/Platform;->checkServerTrusted(Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Lcom/android/org/conscrypt/AbstractConscryptSocket;)V

    goto :goto_36

    .line 430
    :cond_28
    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    .line 431
    .local v2, "authType":Ljava/lang/String;
    invoke-static {v1, v0, v2, p0}, Lcom/android/org/conscrypt/Platform;->checkClientTrusted(Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Lcom/android/org/conscrypt/AbstractConscryptSocket;)V

    .line 437
    .end local v0    # "peerCertChain":[Ljava/security/cert/X509Certificate;
    .end local v1    # "x509tm":Ljavax/net/ssl/X509TrustManager;
    .end local v2    # "authType":Ljava/lang/String;
    :goto_36
    nop

    .line 438
    return-void

    .line 422
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

    .line 416
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

    .line 435
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    .restart local p1    # "certChain":[[B
    .restart local p2    # "authMethod":Ljava/lang/String;
    :catch_48
    move-exception v0

    .line 436
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/security/cert/CertificateException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 433
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_4f
    move-exception v0

    .line 434
    .local v0, "e":Ljava/security/cert/CertificateException;
    throw v0
.end method
