.class public Lcom/android/org/bouncycastle/jcajce/provider/digest/SHA256$Mappings;
.super Lcom/android/org/bouncycastle/jcajce/provider/digest/DigestAlgorithmProvider;
.source "SHA256.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/digest/SHA256;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mappings"
.end annotation


# static fields
.field private static final blacklist PREFIX:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 93
    const-class v0, Lcom/android/org/bouncycastle/jcajce/provider/digest/SHA256;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/digest/SHA256$Mappings;->PREFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 96
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/digest/DigestAlgorithmProvider;-><init>()V

    .line 97
    return-void
.end method


# virtual methods
.method public blacklist configure(Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V
    .registers 2
    .param p1, "provider"    # Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;

    .line 118
    return-void
.end method
