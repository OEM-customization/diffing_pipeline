.class Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;
.super Ljava/lang/Object;
.source "URICertStore.java"

# interfaces
.implements Ljava/security/cert/CertStoreParameters;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/provider/certpath/URICertStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "URICertStoreParameters"
.end annotation


# instance fields
.field private volatile hashCode:I

.field private final uri:Ljava/net/URI;


# direct methods
.method static synthetic -get0(Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;)Ljava/net/URI;
    .registers 2
    .param p0, "-this"    # Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;

    .prologue
    iget-object v0, p0, Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;->uri:Ljava/net/URI;

    return-object v0
.end method

.method constructor <init>(Ljava/net/URI;)V
    .registers 3
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 453
    const/4 v0, 0x0

    iput v0, p0, Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;->hashCode:I

    .line 455
    iput-object p1, p0, Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;->uri:Ljava/net/URI;

    .line 456
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 474
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    .line 475
    :catch_5
    move-exception v0

    .line 477
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 458
    instance-of v1, p1, Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;

    if-nez v1, :cond_6

    .line 459
    const/4 v1, 0x0

    return v1

    :cond_6
    move-object v0, p1

    .line 461
    check-cast v0, Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;

    .line 462
    .local v0, "params":Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;
    iget-object v1, p0, Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;->uri:Ljava/net/URI;

    iget-object v2, v0, Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;->uri:Ljava/net/URI;

    invoke-virtual {v1, v2}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 465
    iget v1, p0, Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;->hashCode:I

    if-nez v1, :cond_10

    .line 466
    const/16 v0, 0x11

    .line 467
    .local v0, "result":I
    iget-object v1, p0, Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;->uri:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x275

    .line 468
    iput v0, p0, Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;->hashCode:I

    .line 470
    .end local v0    # "result":I
    :cond_10
    iget v1, p0, Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;->hashCode:I

    return v1
.end method
