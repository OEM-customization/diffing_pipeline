.class public abstract Lcom/android/org/bouncycastle/asn1/ASN1Generator;
.super Ljava/lang/Object;
.source "ASN1Generator.java"


# instance fields
.field protected _out:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 2
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Generator;->_out:Ljava/io/OutputStream;

    .line 20
    return-void
.end method


# virtual methods
.method public abstract getRawOutputStream()Ljava/io/OutputStream;
.end method
