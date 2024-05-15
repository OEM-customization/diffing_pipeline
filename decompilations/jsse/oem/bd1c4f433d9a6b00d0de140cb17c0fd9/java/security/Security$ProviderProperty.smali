.class Ljava/security/Security$ProviderProperty;
.super Ljava/lang/Object;
.source "Security.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/Security;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProviderProperty"
.end annotation


# instance fields
.field className:Ljava/lang/String;

.field provider:Ljava/security/Provider;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/security/Security$ProviderProperty;)V
    .registers 2
    .param p1, "-this0"    # Ljava/security/Security$ProviderProperty;

    .prologue
    invoke-direct {p0}, Ljava/security/Security$ProviderProperty;-><init>()V

    return-void
.end method
