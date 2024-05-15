.class public Lcom/android/org/conscrypt/ct/CTVerificationResult;
.super Ljava/lang/Object;
.source "CTVerificationResult.java"


# instance fields
.field private final invalidSCTs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/org/conscrypt/ct/VerifiedSCT;",
            ">;"
        }
    .end annotation
.end field

.field private final validSCTs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/org/conscrypt/ct/VerifiedSCT;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #disallowed odex opcode
    #iput-object-quick v0, p0, field@0xc
    nop

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #disallowed odex opcode
    #iput-object-quick v0, p0, field@0x8
    nop

    .line 28
    return-void
.end method


# virtual methods
.method public add(Lcom/android/org/conscrypt/ct/VerifiedSCT;)V
    .registers 4
    .param p1, "result"    # Lcom/android/org/conscrypt/ct/VerifiedSCT;

    .prologue
    .line 33
    #disallowed odex opcode
    #iget-object-quick v0, p1, field@0xc
    nop

    sget-object v1, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;->VALID:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    if-ne v0, v1, :cond_c

    .line 34
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0xc
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v0, p1}, vtable@11
    nop

    .line 38
    :goto_b
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 36
    :cond_c
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x8
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v0, p1}, vtable@11
    nop

    goto :goto_b
.end method

.method public getInvalidSCTs()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/org/conscrypt/ct/VerifiedSCT;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x8
    nop

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getValidSCTs()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/org/conscrypt/ct/VerifiedSCT;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0xc
    nop

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
