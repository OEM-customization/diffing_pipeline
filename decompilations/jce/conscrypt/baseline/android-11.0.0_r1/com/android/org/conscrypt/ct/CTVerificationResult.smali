.class public Lcom/android/org/conscrypt/ct/CTVerificationResult;
.super Ljava/lang/Object;
.source "CTVerificationResult.java"


# instance fields
.field private final blacklist invalidSCTs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/org/conscrypt/ct/VerifiedSCT;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist validSCTs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/org/conscrypt/ct/VerifiedSCT;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/ct/CTVerificationResult;->validSCTs:Ljava/util/ArrayList;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/ct/CTVerificationResult;->invalidSCTs:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public blacklist add(Lcom/android/org/conscrypt/ct/VerifiedSCT;)V
    .registers 4
    .param p1, "result"    # Lcom/android/org/conscrypt/ct/VerifiedSCT;

    .line 34
    iget-object v0, p1, Lcom/android/org/conscrypt/ct/VerifiedSCT;->status:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    sget-object v1, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;->VALID:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    if-ne v0, v1, :cond_c

    .line 35
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/CTVerificationResult;->validSCTs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 37
    :cond_c
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/CTVerificationResult;->invalidSCTs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    :goto_11
    return-void
.end method

.method public blacklist getInvalidSCTs()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/org/conscrypt/ct/VerifiedSCT;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/CTVerificationResult;->invalidSCTs:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getValidSCTs()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/org/conscrypt/ct/VerifiedSCT;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/CTVerificationResult;->validSCTs:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
