.class Lcom/android/org/bouncycastle/x509/X509Util$Implementation;
.super Ljava/lang/Object;
.source "X509Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/x509/X509Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Implementation"
.end annotation


# instance fields
.field blacklist engine:Ljava/lang/Object;

.field blacklist provider:Ljava/security/Provider;


# direct methods
.method constructor blacklist <init>(Ljava/lang/Object;Ljava/security/Provider;)V
    .registers 3
    .param p1, "engine"    # Ljava/lang/Object;
    .param p2, "provider"    # Ljava/security/Provider;

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    iput-object p1, p0, Lcom/android/org/bouncycastle/x509/X509Util$Implementation;->engine:Ljava/lang/Object;

    .line 305
    iput-object p2, p0, Lcom/android/org/bouncycastle/x509/X509Util$Implementation;->provider:Ljava/security/Provider;

    .line 306
    return-void
.end method


# virtual methods
.method blacklist getEngine()Ljava/lang/Object;
    .registers 2

    .line 310
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509Util$Implementation;->engine:Ljava/lang/Object;

    return-object v0
.end method

.method blacklist getProvider()Ljava/security/Provider;
    .registers 2

    .line 315
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509Util$Implementation;->provider:Ljava/security/Provider;

    return-object v0
.end method
