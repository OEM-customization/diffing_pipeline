.class Ljava/util/TaskQueue;
.super Ljava/lang/Object;
.source "Timer.java"


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private queue:[Ljava/util/TimerTask;

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const-class v0, Ljava/util/TaskQueue;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Ljava/util/TaskQueue;->-assertionsDisabled:Z

    .line 569
    return-void
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    .line 569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 578
    const/16 v0, 0x80

    new-array v0, v0, [Ljava/util/TimerTask;

    iput-object v0, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    .line 584
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/TaskQueue;->size:I

    .line 569
    return-void
.end method

.method private fixDown(I)V
    .registers 8
    .param p1, "k"    # I

    .prologue
    .line 701
    :goto_0
    shl-int/lit8 v0, p1, 0x1

    .local v0, "j":I
    iget v2, p0, Ljava/util/TaskQueue;->size:I

    if-gt v0, v2, :cond_30

    if-lez v0, :cond_30

    .line 702
    iget v2, p0, Ljava/util/TaskQueue;->size:I

    if-ge v0, v2, :cond_20

    .line 703
    iget-object v2, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    aget-object v2, v2, v0

    iget-wide v2, v2, Ljava/util/TimerTask;->nextExecutionTime:J

    iget-object v4, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    add-int/lit8 v5, v0, 0x1

    aget-object v4, v4, v5

    iget-wide v4, v4, Ljava/util/TimerTask;->nextExecutionTime:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_20

    .line 704
    add-int/lit8 v0, v0, 0x1

    .line 705
    :cond_20
    iget-object v2, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    aget-object v2, v2, p1

    iget-wide v2, v2, Ljava/util/TimerTask;->nextExecutionTime:J

    iget-object v4, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    aget-object v4, v4, v0

    iget-wide v4, v4, Ljava/util/TimerTask;->nextExecutionTime:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_31

    .line 710
    :cond_30
    return-void

    .line 707
    :cond_31
    iget-object v2, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    aget-object v1, v2, v0

    .local v1, "tmp":Ljava/util/TimerTask;
    iget-object v2, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    iget-object v3, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    aget-object v3, v3, p1

    aput-object v3, v2, v0

    iget-object v2, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    aput-object v1, v2, p1

    .line 708
    move p1, v0

    goto :goto_0
.end method

.method private fixUp(I)V
    .registers 8
    .param p1, "k"    # I

    .prologue
    .line 680
    :goto_0
    const/4 v2, 0x1

    if-le p1, v2, :cond_15

    .line 681
    shr-int/lit8 v0, p1, 0x1

    .line 682
    .local v0, "j":I
    iget-object v2, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    aget-object v2, v2, v0

    iget-wide v2, v2, Ljava/util/TimerTask;->nextExecutionTime:J

    iget-object v4, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    aget-object v4, v4, p1

    iget-wide v4, v4, Ljava/util/TimerTask;->nextExecutionTime:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_16

    .line 687
    .end local v0    # "j":I
    :cond_15
    return-void

    .line 684
    .restart local v0    # "j":I
    :cond_16
    iget-object v2, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    aget-object v1, v2, v0

    .local v1, "tmp":Ljava/util/TimerTask;
    iget-object v2, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    iget-object v3, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    aget-object v3, v3, p1

    aput-object v3, v2, v0

    iget-object v2, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    aput-object v1, v2, p1

    .line 685
    move p1, v0

    goto :goto_0
.end method


# virtual methods
.method add(Ljava/util/TimerTask;)V
    .registers 4
    .param p1, "task"    # Ljava/util/TimerTask;

    .prologue
    .line 598
    iget v0, p0, Ljava/util/TaskQueue;->size:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    array-length v1, v1

    if-ne v0, v1, :cond_18

    .line 599
    iget-object v0, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    iget-object v1, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/TimerTask;

    iput-object v0, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    .line 601
    :cond_18
    iget-object v0, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    iget v1, p0, Ljava/util/TaskQueue;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/TaskQueue;->size:I

    aput-object p1, v0, v1

    .line 602
    iget v0, p0, Ljava/util/TaskQueue;->size:I

    invoke-direct {p0, v0}, Ljava/util/TaskQueue;->fixUp(I)V

    .line 603
    return-void
.end method

.method clear()V
    .registers 4

    .prologue
    .line 664
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    iget v1, p0, Ljava/util/TaskQueue;->size:I

    if-gt v0, v1, :cond_d

    .line 665
    iget-object v1, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 664
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 667
    :cond_d
    const/4 v1, 0x0

    iput v1, p0, Ljava/util/TaskQueue;->size:I

    .line 668
    return-void
.end method

.method get(I)Ljava/util/TimerTask;
    .registers 3
    .param p1, "i"    # I

    .prologue
    .line 619
    iget-object v0, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    aget-object v0, v0, p1

    return-object v0
.end method

.method getMin()Ljava/util/TimerTask;
    .registers 3

    .prologue
    .line 610
    iget-object v0, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method heapify()V
    .registers 3

    .prologue
    .line 717
    iget v1, p0, Ljava/util/TaskQueue;->size:I

    div-int/lit8 v0, v1, 0x2

    .local v0, "i":I
    :goto_4
    const/4 v1, 0x1

    if-lt v0, v1, :cond_d

    .line 718
    invoke-direct {p0, v0}, Ljava/util/TaskQueue;->fixDown(I)V

    .line 717
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 719
    :cond_d
    return-void
.end method

.method isEmpty()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 656
    iget v1, p0, Ljava/util/TaskQueue;->size:I

    if-nez v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method quickRemove(I)V
    .registers 5
    .param p1, "i"    # I

    .prologue
    .line 637
    sget-boolean v0, Ljava/util/TaskQueue;->-assertionsDisabled:Z

    if-nez v0, :cond_e

    iget v0, p0, Ljava/util/TaskQueue;->size:I

    if-le p1, v0, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 639
    :cond_e
    iget-object v0, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    iget-object v1, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    iget v2, p0, Ljava/util/TaskQueue;->size:I

    aget-object v1, v1, v2

    aput-object v1, v0, p1

    .line 640
    iget-object v0, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    iget v1, p0, Ljava/util/TaskQueue;->size:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Ljava/util/TaskQueue;->size:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 641
    return-void
.end method

.method removeMin()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 626
    iget-object v0, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    iget-object v1, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    iget v2, p0, Ljava/util/TaskQueue;->size:I

    aget-object v1, v1, v2

    aput-object v1, v0, v3

    .line 627
    iget-object v0, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    iget v1, p0, Ljava/util/TaskQueue;->size:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Ljava/util/TaskQueue;->size:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 628
    invoke-direct {p0, v3}, Ljava/util/TaskQueue;->fixDown(I)V

    .line 629
    return-void
.end method

.method rescheduleMin(J)V
    .registers 6
    .param p1, "newTime"    # J

    .prologue
    const/4 v1, 0x1

    .line 648
    iget-object v0, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    aget-object v0, v0, v1

    iput-wide p1, v0, Ljava/util/TimerTask;->nextExecutionTime:J

    .line 649
    invoke-direct {p0, v1}, Ljava/util/TaskQueue;->fixDown(I)V

    .line 650
    return-void
.end method

.method size()I
    .registers 2

    .prologue
    .line 590
    iget v0, p0, Ljava/util/TaskQueue;->size:I

    return v0
.end method
