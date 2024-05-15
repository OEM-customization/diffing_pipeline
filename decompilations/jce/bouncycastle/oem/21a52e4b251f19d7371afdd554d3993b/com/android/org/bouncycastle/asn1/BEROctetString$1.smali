.class Lcom/android/org/bouncycastle/asn1/BEROctetString$1;
.super Ljava/lang/Object;
.source "BEROctetString.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/bouncycastle/asn1/BEROctetString;->getObjects()Ljava/util/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field blacklist counter:I

.field final synthetic blacklist this$0:Lcom/android/org/bouncycastle/asn1/BEROctetString;


# direct methods
.method constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/BEROctetString;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/org/bouncycastle/asn1/BEROctetString;

    .line 138
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/BEROctetString$1;->this$0:Lcom/android/org/bouncycastle/asn1/BEROctetString;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/bouncycastle/asn1/BEROctetString$1;->counter:I

    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api hasMoreElements()Z
    .registers 3

    .line 143
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/BEROctetString$1;->counter:I

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/BEROctetString$1;->this$0:Lcom/android/org/bouncycastle/asn1/BEROctetString;

    # getter for: Lcom/android/org/bouncycastle/asn1/BEROctetString;->octs:[Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/BEROctetString;->access$000(Lcom/android/org/bouncycastle/asn1/BEROctetString;)[Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public whitelist core-platform-api test-api nextElement()Ljava/lang/Object;
    .registers 4

    .line 148
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BEROctetString$1;->this$0:Lcom/android/org/bouncycastle/asn1/BEROctetString;

    # getter for: Lcom/android/org/bouncycastle/asn1/BEROctetString;->octs:[Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/BEROctetString;->access$000(Lcom/android/org/bouncycastle/asn1/BEROctetString;)[Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    iget v1, p0, Lcom/android/org/bouncycastle/asn1/BEROctetString$1;->counter:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/org/bouncycastle/asn1/BEROctetString$1;->counter:I

    aget-object v0, v0, v1

    return-object v0
.end method
