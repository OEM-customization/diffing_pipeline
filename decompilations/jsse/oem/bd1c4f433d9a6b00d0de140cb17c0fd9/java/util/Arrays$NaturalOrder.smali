.class final Ljava/util/Arrays$NaturalOrder;
.super Ljava/lang/Object;
.source "Arrays.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Arrays;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NaturalOrder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Ljava/util/Arrays$NaturalOrder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 107
    new-instance v0, Ljava/util/Arrays$NaturalOrder;

    invoke-direct {v0}, Ljava/util/Arrays$NaturalOrder;-><init>()V

    sput-object v0, Ljava/util/Arrays$NaturalOrder;->INSTANCE:Ljava/util/Arrays$NaturalOrder;

    .line 102
    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "first"    # Ljava/lang/Object;
    .param p2, "second"    # Ljava/lang/Object;

    .prologue
    .line 105
    check-cast p1, Ljava/lang/Comparable;

    .end local p1    # "first":Ljava/lang/Object;
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
