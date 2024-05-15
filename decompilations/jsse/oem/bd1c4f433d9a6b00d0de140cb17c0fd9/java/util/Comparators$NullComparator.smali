.class final Ljava/util/Comparators$NullComparator;
.super Ljava/lang/Object;
.source "Comparators.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Comparators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NullComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x690c62b248f521b8L


# instance fields
.field private final nullFirst:Z

.field private final real:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ZLjava/util/Comparator;)V
    .registers 3
    .param p1, "nullFirst"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Ljava/util/Comparators$NullComparator;, "Ljava/util/Comparators$NullComparator<TT;>;"
    .local p2, "real":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-boolean p1, p0, Ljava/util/Comparators$NullComparator;->nullFirst:Z

    .line 73
    iput-object p2, p0, Ljava/util/Comparators$NullComparator;->real:Ljava/util/Comparator;

    .line 74
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Comparators$NullComparator;, "Ljava/util/Comparators$NullComparator<TT;>;"
    .local p1, "a":Ljava/lang/Object;, "TT;"
    .local p2, "b":Ljava/lang/Object;, "TT;"
    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 78
    if-nez p1, :cond_10

    .line 79
    if-nez p2, :cond_8

    :goto_7
    return v0

    :cond_8
    iget-boolean v0, p0, Ljava/util/Comparators$NullComparator;->nullFirst:Z

    if-eqz v0, :cond_e

    move v0, v1

    goto :goto_7

    :cond_e
    move v0, v2

    goto :goto_7

    .line 80
    :cond_10
    if-nez p2, :cond_19

    .line 81
    iget-boolean v0, p0, Ljava/util/Comparators$NullComparator;->nullFirst:Z

    if-eqz v0, :cond_17

    :goto_16
    return v2

    :cond_17
    move v2, v1

    goto :goto_16

    .line 83
    :cond_19
    iget-object v1, p0, Ljava/util/Comparators$NullComparator;->real:Ljava/util/Comparator;

    if-nez v1, :cond_1e

    :goto_1d
    return v0

    :cond_1e
    iget-object v0, p0, Ljava/util/Comparators$NullComparator;->real:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_1d
.end method

.method public reversed()Ljava/util/Comparator;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Comparators$NullComparator;, "Ljava/util/Comparators$NullComparator<TT;>;"
    const/4 v0, 0x0

    .line 95
    new-instance v1, Ljava/util/Comparators$NullComparator;

    iget-boolean v2, p0, Ljava/util/Comparators$NullComparator;->nullFirst:Z

    xor-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Ljava/util/Comparators$NullComparator;->real:Ljava/util/Comparator;

    if-nez v3, :cond_f

    :goto_b
    invoke-direct {v1, v2, v0}, Ljava/util/Comparators$NullComparator;-><init>(ZLjava/util/Comparator;)V

    return-object v1

    :cond_f
    iget-object v0, p0, Ljava/util/Comparators$NullComparator;->real:Ljava/util/Comparator;

    invoke-interface {v0}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v0

    goto :goto_b
.end method

.method public thenComparing(Ljava/util/Comparator;)Ljava/util/Comparator;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TT;>;)",
            "Ljava/util/Comparator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "this":Ljava/util/Comparators$NullComparator;, "Ljava/util/Comparators$NullComparator<TT;>;"
    .local p1, "other":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    new-instance v0, Ljava/util/Comparators$NullComparator;

    iget-boolean v1, p0, Ljava/util/Comparators$NullComparator;->nullFirst:Z

    iget-object v2, p0, Ljava/util/Comparators$NullComparator;->real:Ljava/util/Comparator;

    if-nez v2, :cond_f

    .end local p1    # "other":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    :goto_b
    invoke-direct {v0, v1, p1}, Ljava/util/Comparators$NullComparator;-><init>(ZLjava/util/Comparator;)V

    return-object v0

    .restart local p1    # "other":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    :cond_f
    iget-object v2, p0, Ljava/util/Comparators$NullComparator;->real:Ljava/util/Comparator;

    invoke-interface {v2, p1}, Ljava/util/Comparator;->thenComparing(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p1

    goto :goto_b
.end method
