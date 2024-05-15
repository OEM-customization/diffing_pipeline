.class public abstract Ljava/lang/ProcessBuilder$Redirect;
.super Ljava/lang/Object;
.source "ProcessBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/ProcessBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Redirect"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/ProcessBuilder$Redirect$1;,
        Ljava/lang/ProcessBuilder$Redirect$2;,
        Ljava/lang/ProcessBuilder$Redirect$Type;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field public static final INHERIT:Ljava/lang/ProcessBuilder$Redirect;

.field public static final PIPE:Ljava/lang/ProcessBuilder$Redirect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const-class v0, Ljava/lang/ProcessBuilder$Redirect;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Ljava/lang/ProcessBuilder$Redirect;->-assertionsDisabled:Z

    .line 511
    new-instance v0, Ljava/lang/ProcessBuilder$Redirect$1;

    invoke-direct {v0}, Ljava/lang/ProcessBuilder$Redirect$1;-><init>()V

    sput-object v0, Ljava/lang/ProcessBuilder$Redirect;->PIPE:Ljava/lang/ProcessBuilder$Redirect;

    .line 526
    new-instance v0, Ljava/lang/ProcessBuilder$Redirect$2;

    invoke-direct {v0}, Ljava/lang/ProcessBuilder$Redirect$2;-><init>()V

    sput-object v0, Ljava/lang/ProcessBuilder$Redirect;->INHERIT:Ljava/lang/ProcessBuilder$Redirect;

    .line 459
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 666
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/ProcessBuilder$Redirect;)V
    .registers 2
    .param p1, "-this0"    # Ljava/lang/ProcessBuilder$Redirect;

    .prologue
    invoke-direct {p0}, Ljava/lang/ProcessBuilder$Redirect;-><init>()V

    return-void
.end method

.method public static appendTo(Ljava/io/File;)Ljava/lang/ProcessBuilder$Redirect;
    .registers 2
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 619
    if-nez p0, :cond_8

    .line 620
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 621
    :cond_8
    new-instance v0, Ljava/lang/ProcessBuilder$Redirect$5;

    invoke-direct {v0, p0}, Ljava/lang/ProcessBuilder$Redirect$5;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public static from(Ljava/io/File;)Ljava/lang/ProcessBuilder$Redirect;
    .registers 2
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 561
    if-nez p0, :cond_8

    .line 562
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 563
    :cond_8
    new-instance v0, Ljava/lang/ProcessBuilder$Redirect$3;

    invoke-direct {v0, p0}, Ljava/lang/ProcessBuilder$Redirect$3;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public static to(Ljava/io/File;)Ljava/lang/ProcessBuilder$Redirect;
    .registers 2
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 588
    if-nez p0, :cond_8

    .line 589
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 590
    :cond_8
    new-instance v0, Ljava/lang/ProcessBuilder$Redirect$4;

    invoke-direct {v0, p0}, Ljava/lang/ProcessBuilder$Redirect$4;-><init>(Ljava/io/File;)V

    return-object v0
.end method


# virtual methods
.method append()Z
    .registers 2

    .prologue
    .line 544
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 639
    if-ne p1, p0, :cond_5

    .line 640
    const/4 v1, 0x1

    return v1

    .line 641
    :cond_5
    instance-of v1, p1, Ljava/lang/ProcessBuilder$Redirect;

    if-nez v1, :cond_a

    .line 642
    return v3

    :cond_a
    move-object v0, p1

    .line 643
    check-cast v0, Ljava/lang/ProcessBuilder$Redirect;

    .line 644
    .local v0, "r":Ljava/lang/ProcessBuilder$Redirect;
    invoke-virtual {v0}, Ljava/lang/ProcessBuilder$Redirect;->type()Ljava/lang/ProcessBuilder$Redirect$Type;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/ProcessBuilder$Redirect;->type()Ljava/lang/ProcessBuilder$Redirect$Type;

    move-result-object v2

    if-eq v1, v2, :cond_18

    .line 645
    return v3

    .line 646
    :cond_18
    sget-boolean v1, Ljava/lang/ProcessBuilder$Redirect;->-assertionsDisabled:Z

    if-nez v1, :cond_28

    invoke-virtual {p0}, Ljava/lang/ProcessBuilder$Redirect;->file()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_28

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 647
    :cond_28
    invoke-virtual {p0}, Ljava/lang/ProcessBuilder$Redirect;->file()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/ProcessBuilder$Redirect;->file()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public file()Ljava/io/File;
    .registers 2

    .prologue
    .line 537
    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 655
    invoke-virtual {p0}, Ljava/lang/ProcessBuilder$Redirect;->file()Ljava/io/File;

    move-result-object v0

    .line 656
    .local v0, "file":Ljava/io/File;
    if-nez v0, :cond_b

    .line 657
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    return v1

    .line 659
    :cond_b
    invoke-virtual {v0}, Ljava/io/File;->hashCode()I

    move-result v1

    return v1
.end method

.method public abstract type()Ljava/lang/ProcessBuilder$Redirect$Type;
.end method
