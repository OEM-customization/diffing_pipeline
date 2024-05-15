.class public Ljava/security/CodeSource;
.super Ljava/lang/Object;
.source "CodeSource.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private location:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/net/URL;[Ljava/security/CodeSigner;)V
    .registers 3
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "signers"    # [Ljava/security/CodeSigner;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Ljava/security/CodeSource;->location:Ljava/net/URL;

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;[Ljava/security/cert/Certificate;)V
    .registers 3
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "certs"    # [Ljava/security/cert/Certificate;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Ljava/security/CodeSource;->location:Ljava/net/URL;

    .line 55
    return-void
.end method


# virtual methods
.method public final getCertificates()[Ljava/security/cert/Certificate;
    .registers 2

    .prologue
    .line 67
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getCodeSigners()[Ljava/security/CodeSigner;
    .registers 2

    .prologue
    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getLocation()Ljava/net/URL;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Ljava/security/CodeSource;->location:Ljava/net/URL;

    return-object v0
.end method

.method public implies(Ljava/security/CodeSource;)Z
    .registers 3
    .param p1, "codesource"    # Ljava/security/CodeSource;

    .prologue
    .line 71
    const/4 v0, 0x1

    return v0
.end method
