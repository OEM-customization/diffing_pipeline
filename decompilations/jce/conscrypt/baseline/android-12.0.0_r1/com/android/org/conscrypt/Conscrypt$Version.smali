.class public Lcom/android/org/conscrypt/Conscrypt$Version;
.super Ljava/lang/Object;
.source "Conscrypt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/Conscrypt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Version"
.end annotation


# instance fields
.field private final blacklist major:I

.field private final blacklist minor:I

.field private final blacklist patch:I


# direct methods
.method private constructor blacklist <init>(III)V
    .registers 4
    .param p1, "major"    # I
    .param p2, "minor"    # I
    .param p3, "patch"    # I

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput p1, p0, Lcom/android/org/conscrypt/Conscrypt$Version;->major:I

    .line 85
    iput p2, p0, Lcom/android/org/conscrypt/Conscrypt$Version;->minor:I

    .line 86
    iput p3, p0, Lcom/android/org/conscrypt/Conscrypt$Version;->patch:I

    .line 87
    return-void
.end method

.method synthetic constructor blacklist <init>(IIILcom/android/org/conscrypt/Conscrypt$1;)V
    .registers 5
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # Lcom/android/org/conscrypt/Conscrypt$1;

    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/conscrypt/Conscrypt$Version;-><init>(III)V

    return-void
.end method


# virtual methods
.method public blacklist major()I
    .registers 2

    .line 89
    iget v0, p0, Lcom/android/org/conscrypt/Conscrypt$Version;->major:I

    return v0
.end method

.method public blacklist minor()I
    .registers 2

    .line 90
    iget v0, p0, Lcom/android/org/conscrypt/Conscrypt$Version;->minor:I

    return v0
.end method

.method public blacklist patch()I
    .registers 2

    .line 91
    iget v0, p0, Lcom/android/org/conscrypt/Conscrypt$Version;->patch:I

    return v0
.end method
