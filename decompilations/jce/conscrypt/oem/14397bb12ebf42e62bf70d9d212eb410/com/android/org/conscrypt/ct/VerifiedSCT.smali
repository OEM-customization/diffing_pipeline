.class public final Lcom/android/org/conscrypt/ct/VerifiedSCT;
.super Ljava/lang/Object;
.source "VerifiedSCT.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;
    }
.end annotation


# instance fields
.field public final sct:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;

.field public final status:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;


# direct methods
.method public constructor <init>(Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;)V
    .registers 3
    .param p1, "sct"    # Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;
    .param p2, "status"    # Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    #disallowed odex opcode
    #iput-object-quick p1, p0, field@0x8
    nop

    .line 40
    #disallowed odex opcode
    #iput-object-quick p2, p0, field@0xc
    nop

    .line 41
    return-void
.end method
