.class Lcom/android/org/bouncycastle/asn1/ASN1Sequence$2;
.super Ljava/lang/Object;
.source "ASN1Sequence.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/ASN1SequenceParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->parser()Lcom/android/org/bouncycastle/asn1/ASN1SequenceParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private blacklist pos:I

.field final synthetic blacklist this$0:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

.field final synthetic blacklist val$count:I


# direct methods
.method constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 265
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence$2;->this$0:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    iput p2, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence$2;->val$count:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    const/4 p2, 0x0

    iput p2, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence$2;->pos:I

    return-void
.end method


# virtual methods
.method public blacklist getLoadedObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 290
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence$2;->this$0:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method

.method public blacklist readObject()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 270
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence$2;->val$count:I

    iget v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence$2;->pos:I

    if-ne v0, v1, :cond_8

    .line 272
    const/4 v0, 0x0

    return-object v0

    .line 275
    :cond_8
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence$2;->this$0:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    iget-object v0, v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    iget v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence$2;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence$2;->pos:I

    aget-object v0, v0, v1

    .line 276
    .local v0, "obj":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    instance-of v1, v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_20

    .line 278
    move-object v1, v0

    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->parser()Lcom/android/org/bouncycastle/asn1/ASN1SequenceParser;

    move-result-object v1

    return-object v1

    .line 280
    :cond_20
    instance-of v1, v0, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_2c

    .line 282
    move-object v1, v0

    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->parser()Lcom/android/org/bouncycastle/asn1/ASN1SetParser;

    move-result-object v1

    return-object v1

    .line 285
    :cond_2c
    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 295
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence$2;->this$0:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method
