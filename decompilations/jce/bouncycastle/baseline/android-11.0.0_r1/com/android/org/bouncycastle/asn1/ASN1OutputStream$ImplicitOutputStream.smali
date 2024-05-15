.class Lcom/android/org/bouncycastle/asn1/ASN1OutputStream$ImplicitOutputStream;
.super Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
.source "ASN1OutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImplicitOutputStream"
.end annotation


# instance fields
.field private blacklist first:Z

.field final synthetic blacklist this$0:Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;


# direct methods
.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;Ljava/io/OutputStream;)V
    .registers 3
    .param p2, "os"    # Ljava/io/OutputStream;

    .line 179
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream$ImplicitOutputStream;->this$0:Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;

    .line 180
    invoke-direct {p0, p2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 176
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream$ImplicitOutputStream;->first:Z

    .line 181
    return-void
.end method


# virtual methods
.method public blacklist write(I)V
    .registers 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream$ImplicitOutputStream;->first:Z

    if-eqz v0, :cond_8

    .line 188
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream$ImplicitOutputStream;->first:Z

    goto :goto_b

    .line 192
    :cond_8
    invoke-super {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 194
    :goto_b
    return-void
.end method
