.class public Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/DH;
.super Ljava/lang/Object;
.source "DH.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/DH$Mappings;
    }
.end annotation


# static fields
.field private static final PREFIX:Ljava/lang/String; = "org.bouncycastle.jcajce.provider.asymmetric.dh."

.field private static final generalDhAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Ljava/util/Map;
    .registers 1

    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/DH;->generalDhAttributes:Ljava/util/Map;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/DH;->generalDhAttributes:Ljava/util/Map;

    .line 20
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/DH;->generalDhAttributes:Ljava/util/Map;

    const-string/jumbo v1, "SupportedKeyClasses"

    const-string/jumbo v2, "javax.crypto.interfaces.DHPublicKey|javax.crypto.interfaces.DHPrivateKey"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/DH;->generalDhAttributes:Ljava/util/Map;

    const-string/jumbo v1, "SupportedKeyFormats"

    const-string/jumbo v2, "PKCS#8|X.509"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
