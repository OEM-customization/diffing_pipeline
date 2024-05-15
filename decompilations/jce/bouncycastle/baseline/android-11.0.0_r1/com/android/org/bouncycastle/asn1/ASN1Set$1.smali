.class Lcom/android/org/bouncycastle/asn1/ASN1Set$1;
.super Ljava/lang/Object;
.source "ASN1Set.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/ASN1SetParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/bouncycastle/asn1/ASN1Set;->parser()Lcom/android/org/bouncycastle/asn1/ASN1SetParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private blacklist index:I

.field private final blacklist max:I

.field final synthetic blacklist this$0:Lcom/android/org/bouncycastle/asn1/ASN1Set;

.field final synthetic blacklist val$outer:Lcom/android/org/bouncycastle/asn1/ASN1Set;


# direct methods
.method constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1Set;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 326
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set$1;->this$0:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set$1;->val$outer:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    iget-object p2, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set$1;->this$0:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result p2

    iput p2, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set$1;->max:I

    return-void
.end method


# virtual methods
.method public blacklist getLoadedObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 353
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set$1;->val$outer:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public blacklist readObject()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 333
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set$1;->index:I

    iget v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set$1;->max:I

    if-ne v0, v1, :cond_8

    .line 335
    const/4 v0, 0x0

    return-object v0

    .line 338
    :cond_8
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set$1;->this$0:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set$1;->index:I

    invoke-virtual {v1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    .line 339
    .local v0, "obj":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    instance-of v1, v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_1e

    .line 341
    move-object v1, v0

    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->parser()Lcom/android/org/bouncycastle/asn1/ASN1SequenceParser;

    move-result-object v1

    return-object v1

    .line 343
    :cond_1e
    instance-of v1, v0, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_2a

    .line 345
    move-object v1, v0

    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->parser()Lcom/android/org/bouncycastle/asn1/ASN1SetParser;

    move-result-object v1

    return-object v1

    .line 348
    :cond_2a
    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 358
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set$1;->val$outer:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method
