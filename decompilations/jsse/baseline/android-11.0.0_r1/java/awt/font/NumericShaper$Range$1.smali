.class final enum Ljava/awt/font/NumericShaper$Range$1;
.super Ljava/awt/font/NumericShaper$Range;
.source "NumericShaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/awt/font/NumericShaper$Range;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;IIII)V
    .registers 13
    .param p3, "base"    # I
    .param p4, "start"    # I
    .param p5, "end"    # I

    .line 234
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIIILjava/awt/font/NumericShaper$1;)V

    return-void
.end method


# virtual methods
.method blacklist getNumericBase()C
    .registers 2

    .line 236
    const/4 v0, 0x1

    return v0
.end method
