.class Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$EmptyEnumeration;
.super Ljava/lang/Object;
.source "TBSCertList.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmptyEnumeration"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;


# direct methods
.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$EmptyEnumeration;->this$0:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$EmptyEnumeration;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;
    .param p2, "-this1"    # Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$EmptyEnumeration;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$EmptyEnumeration;-><init>(Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;)V

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .registers 2

    .prologue
    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 136
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string/jumbo v1, "Empty Enumeration"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
