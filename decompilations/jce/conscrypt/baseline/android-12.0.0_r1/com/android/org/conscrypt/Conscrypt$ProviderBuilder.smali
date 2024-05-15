.class public Lcom/android/org/conscrypt/Conscrypt$ProviderBuilder;
.super Ljava/lang/Object;
.source "Conscrypt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/Conscrypt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProviderBuilder"
.end annotation


# instance fields
.field private blacklist defaultTlsProtocol:Ljava/lang/String;

.field private blacklist name:Ljava/lang/String;

.field private blacklist provideTrustManager:Z


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->getDefaultProviderName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/Conscrypt$ProviderBuilder;->name:Ljava/lang/String;

    .line 170
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->provideTrustManagerByDefault()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/org/conscrypt/Conscrypt$ProviderBuilder;->provideTrustManager:Z

    .line 171
    const-string v0, "TLSv1.3"

    iput-object v0, p0, Lcom/android/org/conscrypt/Conscrypt$ProviderBuilder;->defaultTlsProtocol:Ljava/lang/String;

    .line 173
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/org/conscrypt/Conscrypt$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/org/conscrypt/Conscrypt$1;

    .line 168
    invoke-direct {p0}, Lcom/android/org/conscrypt/Conscrypt$ProviderBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Ljava/security/Provider;
    .registers 5

    .line 212
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLProvider;

    iget-object v1, p0, Lcom/android/org/conscrypt/Conscrypt$ProviderBuilder;->name:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/org/conscrypt/Conscrypt$ProviderBuilder;->provideTrustManager:Z

    iget-object v3, p0, Lcom/android/org/conscrypt/Conscrypt$ProviderBuilder;->defaultTlsProtocol:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/conscrypt/OpenSSLProvider;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    return-object v0
.end method

.method public blacklist defaultTlsProtocol(Ljava/lang/String;)Lcom/android/org/conscrypt/Conscrypt$ProviderBuilder;
    .registers 2
    .param p1, "defaultTlsProtocol"    # Ljava/lang/String;

    .line 207
    iput-object p1, p0, Lcom/android/org/conscrypt/Conscrypt$ProviderBuilder;->defaultTlsProtocol:Ljava/lang/String;

    .line 208
    return-object p0
.end method

.method public blacklist provideTrustManager()Lcom/android/org/conscrypt/Conscrypt$ProviderBuilder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 190
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/org/conscrypt/Conscrypt$ProviderBuilder;->provideTrustManager(Z)Lcom/android/org/conscrypt/Conscrypt$ProviderBuilder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist provideTrustManager(Z)Lcom/android/org/conscrypt/Conscrypt$ProviderBuilder;
    .registers 2
    .param p1, "provide"    # Z

    .line 198
    iput-boolean p1, p0, Lcom/android/org/conscrypt/Conscrypt$ProviderBuilder;->provideTrustManager:Z

    .line 199
    return-object p0
.end method

.method public blacklist setName(Ljava/lang/String;)Lcom/android/org/conscrypt/Conscrypt$ProviderBuilder;
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 179
    iput-object p1, p0, Lcom/android/org/conscrypt/Conscrypt$ProviderBuilder;->name:Ljava/lang/String;

    .line 180
    return-object p0
.end method
