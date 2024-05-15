.class final Lcom/android/okhttp/internalandroidapi/HttpURLConnectionFactory$DnsAdapter;
.super Ljava/lang/Object;
.source "HttpURLConnectionFactory.java"

# interfaces
.implements Lcom/android/okhttp/Dns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internalandroidapi/HttpURLConnectionFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DnsAdapter"
.end annotation


# instance fields
.field private final blacklist adaptee:Lcom/android/okhttp/internalandroidapi/Dns;


# direct methods
.method constructor blacklist <init>(Lcom/android/okhttp/internalandroidapi/Dns;)V
    .registers 3
    .param p1, "adaptee"    # Lcom/android/okhttp/internalandroidapi/Dns;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/android/okhttp/internalandroidapi/Dns;

    iput-object v0, p0, Lcom/android/okhttp/internalandroidapi/HttpURLConnectionFactory$DnsAdapter;->adaptee:Lcom/android/okhttp/internalandroidapi/Dns;

    .line 159
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 173
    instance-of v0, p1, Lcom/android/okhttp/internalandroidapi/HttpURLConnectionFactory$DnsAdapter;

    if-nez v0, :cond_6

    .line 174
    const/4 v0, 0x0

    return v0

    .line 176
    :cond_6
    iget-object v0, p0, Lcom/android/okhttp/internalandroidapi/HttpURLConnectionFactory$DnsAdapter;->adaptee:Lcom/android/okhttp/internalandroidapi/Dns;

    move-object v1, p1

    check-cast v1, Lcom/android/okhttp/internalandroidapi/HttpURLConnectionFactory$DnsAdapter;

    iget-object v1, v1, Lcom/android/okhttp/internalandroidapi/HttpURLConnectionFactory$DnsAdapter;->adaptee:Lcom/android/okhttp/internalandroidapi/Dns;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api hashCode()I
    .registers 3

    .line 168
    const-class v0, Lcom/android/okhttp/internalandroidapi/HttpURLConnectionFactory$DnsAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/okhttp/internalandroidapi/HttpURLConnectionFactory$DnsAdapter;->adaptee:Lcom/android/okhttp/internalandroidapi/Dns;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public blacklist lookup(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p1, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/android/okhttp/internalandroidapi/HttpURLConnectionFactory$DnsAdapter;->adaptee:Lcom/android/okhttp/internalandroidapi/Dns;

    invoke-interface {v0, p1}, Lcom/android/okhttp/internalandroidapi/Dns;->lookup(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 2

    .line 181
    iget-object v0, p0, Lcom/android/okhttp/internalandroidapi/HttpURLConnectionFactory$DnsAdapter;->adaptee:Lcom/android/okhttp/internalandroidapi/Dns;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
