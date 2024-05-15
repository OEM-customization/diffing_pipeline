.class public abstract Lcom/android/org/bouncycastle/asn1/ASN1Generator;
.super Ljava/lang/Object;
.source "ASN1Generator.java"


# instance fields
.field protected blacklist _out:Ljava/io/OutputStream;


# direct methods
.method public constructor blacklist <init>(Ljava/io/OutputStream;)V
    .registers 2
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Generator;->_out:Ljava/io/OutputStream;

    .line 22
    return-void
.end method


# virtual methods
.method public abstract blacklist getRawOutputStream()Ljava/io/OutputStream;
.end method
