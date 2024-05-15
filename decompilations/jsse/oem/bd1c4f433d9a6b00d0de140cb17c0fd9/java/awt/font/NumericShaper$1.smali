.class Ljava/awt/font/NumericShaper$1;
.super Ljava/lang/Object;
.source "NumericShaper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/awt/font/NumericShaper;-><init>(Ljava/awt/font/NumericShaper$Range;Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/awt/font/NumericShaper$Range;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/awt/font/NumericShaper;


# direct methods
.method constructor <init>(Ljava/awt/font/NumericShaper;)V
    .registers 2
    .param p1, "this$0"    # Ljava/awt/font/NumericShaper;

    .prologue
    .line 1
    iput-object p1, p0, Ljava/awt/font/NumericShaper$1;->this$0:Ljava/awt/font/NumericShaper;

    .line 1080
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public compare(Ljava/awt/font/NumericShaper$Range;Ljava/awt/font/NumericShaper$Range;)I
    .registers 5
    .param p1, "s1"    # Ljava/awt/font/NumericShaper$Range;
    .param p2, "s2"    # Ljava/awt/font/NumericShaper$Range;

    .prologue
    .line 1082
    invoke-static {p1}, Ljava/awt/font/NumericShaper$Range;->-get0(Ljava/awt/font/NumericShaper$Range;)I

    move-result v0

    invoke-static {p2}, Ljava/awt/font/NumericShaper$Range;->-get0(Ljava/awt/font/NumericShaper$Range;)I

    move-result v1

    if-le v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    invoke-static {p1}, Ljava/awt/font/NumericShaper$Range;->-get0(Ljava/awt/font/NumericShaper$Range;)I

    move-result v0

    invoke-static {p2}, Ljava/awt/font/NumericShaper$Range;->-get0(Ljava/awt/font/NumericShaper$Range;)I

    move-result v1

    if-ne v0, v1, :cond_18

    const/4 v0, 0x0

    goto :goto_b

    :cond_18
    const/4 v0, -0x1

    goto :goto_b
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 1081
    check-cast p1, Ljava/awt/font/NumericShaper$Range;

    check-cast p2, Ljava/awt/font/NumericShaper$Range;

    invoke-virtual {p0, p1, p2}, Ljava/awt/font/NumericShaper$1;->compare(Ljava/awt/font/NumericShaper$Range;Ljava/awt/font/NumericShaper$Range;)I

    move-result v0

    return v0
.end method
