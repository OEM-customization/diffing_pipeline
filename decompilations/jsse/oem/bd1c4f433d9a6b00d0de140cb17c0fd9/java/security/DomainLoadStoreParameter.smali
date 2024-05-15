.class public final Ljava/security/DomainLoadStoreParameter;
.super Ljava/lang/Object;
.source "DomainLoadStoreParameter.java"

# interfaces
.implements Ljava/security/KeyStore$LoadStoreParameter;


# instance fields
.field private final configuration:Ljava/net/URI;

.field private final protectionParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/KeyStore$ProtectionParameter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/net/URI;Ljava/util/Map;)V
    .registers 5
    .param p1, "configuration"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/KeyStore$ProtectionParameter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p2, "protectionParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    if-eqz p1, :cond_7

    if-nez p2, :cond_10

    .line 134
    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "invalid null input"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_10
    iput-object p1, p0, Ljava/security/DomainLoadStoreParameter;->configuration:Ljava/net/URI;

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 137
    iput-object v0, p0, Ljava/security/DomainLoadStoreParameter;->protectionParams:Ljava/util/Map;

    .line 139
    return-void
.end method


# virtual methods
.method public getConfiguration()Ljava/net/URI;
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Ljava/security/DomainLoadStoreParameter;->configuration:Ljava/net/URI;

    return-object v0
.end method

.method public getProtectionParameter()Ljava/security/KeyStore$ProtectionParameter;
    .registers 2

    .prologue
    .line 169
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProtectionParams()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/KeyStore$ProtectionParameter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Ljava/security/DomainLoadStoreParameter;->protectionParams:Ljava/util/Map;

    return-object v0
.end method
