.class Ljava/util/TaskQueue;
.super Ljava/lang/Object;
.source "Timer.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private greylist-max-o queue:[Ljava/util/TimerTask;

.field private greylist-max-o size:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 576
    return-void
.end method

.method constructor greylist-max-o <init>()V
    .registers 2

    .line 576
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 585
    const/16 v0, 0x80

    new-array v0, v0, [Ljava/util/TimerTask;

    iput-object v0, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    .line 591
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/TaskQueue;->size:I

    return-void
.end method

.method private greylist-max-o fixDown(I)V
    .registers 8
    .param p1, "k"    # I

    .line 708
    :goto_0
    shl-int/lit8 v0, p1, 0x1

    move v1, v0

    .local v1, "j":I
    iget v2, p0, Ljava/util/TaskQueue;->size:I

    if-gt v0, v2, :cond_3c

    if-lez v1, :cond_3c

    .line 709
    if-ge v1, v2, :cond_1f

    iget-object v0, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    aget-object v0, v0, v1

    iget-wide v2, v0, Ljava/util/TimerTask;->nextExecutionTime:J

    iget-object v0, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    add-int/lit8 v4, v1, 0x1

    aget-object v0, v0, v4

    iget-wide v4, v0, Ljava/util/TimerTask;->nextExecutionTime:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_1f

    .line 711
    add-int/lit8 v1, v1, 0x1

    .line 712
    :cond_1f
    iget-object v0, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    aget-object v0, v0, p1

    iget-wide v2, v0, Ljava/util/TimerTask;->nextExecutionTime:J

    iget-object v0, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    aget-object v0, v0, v1

    iget-wide v4, v0, Ljava/util/TimerTask;->nextExecutionTime:J

    cmp-long v0, v2, v4

    if-gtz v0, :cond_30

    .line 713
    goto :goto_3c

    .line 714
    :cond_30
    iget-object v0, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    aget-object v2, v0, v1

    .local v2, "tmp":Ljava/util/TimerTask;
    aget-object v3, v0, p1

    aput-object v3, v0, v1

    aput-object v2, v0, p1

    .line 715
    move p1, v1

    .line 716
    .end local v2    # "tmp":Ljava/util/TimerTask;
    goto :goto_0

    .line 717
    :cond_3c
    :goto_3c
    return-void
.end method

.method private greylist-max-o fixUp(I)V
    .registers 7
    .param p1, "k"    # I

    .line 687
    :goto_0
    const/4 v0, 0x1

    if-le p1, v0, :cond_22

    .line 688
    shr-int/lit8 v0, p1, 0x1

    .line 689
    .local v0, "j":I
    iget-object v1, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    aget-object v1, v1, v0

    iget-wide v1, v1, Ljava/util/TimerTask;->nextExecutionTime:J

    iget-object v3, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    aget-object v3, v3, p1

    iget-wide v3, v3, Ljava/util/TimerTask;->nextExecutionTime:J

    cmp-long v1, v1, v3

    if-gtz v1, :cond_16

    .line 690
    goto :goto_22

    .line 691
    :cond_16
    iget-object v1, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    aget-object v2, v1, v0

    .local v2, "tmp":Ljava/util/TimerTask;
    aget-object v3, v1, p1

    aput-object v3, v1, v0

    aput-object v2, v1, p1

    .line 692
    move p1, v0

    .line 693
    .end local v0    # "j":I
    .end local v2    # "tmp":Ljava/util/TimerTask;
    goto :goto_0

    .line 694
    :cond_22
    :goto_22
    return-void
.end method


# virtual methods
.method greylist-max-o add(Ljava/util/TimerTask;)V
    .registers 5
    .param p1, "task"    # Ljava/util/TimerTask;

    .line 605
    iget v0, p0, Ljava/util/TaskQueue;->size:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    array-length v2, v1

    if-ne v0, v2, :cond_14

    .line 606
    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/TimerTask;

    iput-object v0, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    .line 608
    :cond_14
    iget-object v0, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    iget v1, p0, Ljava/util/TaskQueue;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/TaskQueue;->size:I

    aput-object p1, v0, v1

    .line 609
    invoke-direct {p0, v1}, Ljava/util/TaskQueue;->fixUp(I)V

    .line 610
    return-void
.end method

.method greylist-max-o clear()V
    .registers 4

    .line 671
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    iget v1, p0, Ljava/util/TaskQueue;->size:I

    if-gt v0, v1, :cond_d

    .line 672
    iget-object v1, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 671
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 674
    .end local v0    # "i":I
    :cond_d
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/TaskQueue;->size:I

    .line 675
    return-void
.end method

.method greylist-max-o get(I)Ljava/util/TimerTask;
    .registers 3
    .param p1, "i"    # I

    .line 626
    iget-object v0, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    aget-object v0, v0, p1

    return-object v0
.end method

.method greylist-max-o getMin()Ljava/util/TimerTask;
    .registers 3

    .line 617
    iget-object v0, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method greylist-max-o heapify()V
    .registers 3

    .line 724
    iget v0, p0, Ljava/util/TaskQueue;->size:I

    div-int/lit8 v0, v0, 0x2

    .local v0, "i":I
    :goto_4
    const/4 v1, 0x1

    if-lt v0, v1, :cond_d

    .line 725
    invoke-direct {p0, v0}, Ljava/util/TaskQueue;->fixDown(I)V

    .line 724
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 726
    .end local v0    # "i":I
    :cond_d
    return-void
.end method

.method greylist-max-o isEmpty()Z
    .registers 2

    .line 663
    iget v0, p0, Ljava/util/TaskQueue;->size:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method greylist-max-o quickRemove(I)V
    .registers 5
    .param p1, "i"    # I

    .line 644
    nop

    .line 646
    iget-object v0, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    iget v1, p0, Ljava/util/TaskQueue;->size:I

    aget-object v2, v0, v1

    aput-object v2, v0, p1

    .line 647
    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Ljava/util/TaskQueue;->size:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 648
    return-void
.end method

.method greylist-max-o removeMin()V
    .registers 5

    .line 633
    iget-object v0, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    iget v1, p0, Ljava/util/TaskQueue;->size:I

    aget-object v2, v0, v1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    .line 634
    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Ljava/util/TaskQueue;->size:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 635
    invoke-direct {p0, v3}, Ljava/util/TaskQueue;->fixDown(I)V

    .line 636
    return-void
.end method

.method greylist-max-o rescheduleMin(J)V
    .registers 5
    .param p1, "newTime"    # J

    .line 655
    iget-object v0, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iput-wide p1, v0, Ljava/util/TimerTask;->nextExecutionTime:J

    .line 656
    invoke-direct {p0, v1}, Ljava/util/TaskQueue;->fixDown(I)V

    .line 657
    return-void
.end method

.method greylist-max-o size()I
    .registers 2

    .line 597
    iget v0, p0, Ljava/util/TaskQueue;->size:I

    return v0
.end method
