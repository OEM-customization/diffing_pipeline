.class Ljava/util/Formatter$Flags;
.super Ljava/lang/Object;
.source "Formatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Formatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Flags"
.end annotation


# static fields
.field static final greylist-max-o ALTERNATE:Ljava/util/Formatter$Flags;

.field static final greylist-max-o GROUP:Ljava/util/Formatter$Flags;

.field static final greylist-max-o LEADING_SPACE:Ljava/util/Formatter$Flags;

.field static final greylist-max-o LEFT_JUSTIFY:Ljava/util/Formatter$Flags;

.field static final greylist-max-o NONE:Ljava/util/Formatter$Flags;

.field static final greylist-max-o PARENTHESES:Ljava/util/Formatter$Flags;

.field static final greylist-max-o PLUS:Ljava/util/Formatter$Flags;

.field static final greylist-max-o PREVIOUS:Ljava/util/Formatter$Flags;

.field static final greylist-max-o UPPERCASE:Ljava/util/Formatter$Flags;

.field static final greylist-max-o ZERO_PAD:Ljava/util/Formatter$Flags;


# instance fields
.field private greylist-max-o flags:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 4504
    new-instance v0, Ljava/util/Formatter$Flags;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/Formatter$Flags;-><init>(I)V

    sput-object v0, Ljava/util/Formatter$Flags;->NONE:Ljava/util/Formatter$Flags;

    .line 4507
    new-instance v0, Ljava/util/Formatter$Flags;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Formatter$Flags;-><init>(I)V

    sput-object v0, Ljava/util/Formatter$Flags;->LEFT_JUSTIFY:Ljava/util/Formatter$Flags;

    .line 4508
    new-instance v0, Ljava/util/Formatter$Flags;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/Formatter$Flags;-><init>(I)V

    sput-object v0, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    .line 4509
    new-instance v0, Ljava/util/Formatter$Flags;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/Formatter$Flags;-><init>(I)V

    sput-object v0, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    .line 4512
    new-instance v0, Ljava/util/Formatter$Flags;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/Formatter$Flags;-><init>(I)V

    sput-object v0, Ljava/util/Formatter$Flags;->PLUS:Ljava/util/Formatter$Flags;

    .line 4513
    new-instance v0, Ljava/util/Formatter$Flags;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/Formatter$Flags;-><init>(I)V

    sput-object v0, Ljava/util/Formatter$Flags;->LEADING_SPACE:Ljava/util/Formatter$Flags;

    .line 4514
    new-instance v0, Ljava/util/Formatter$Flags;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/Formatter$Flags;-><init>(I)V

    sput-object v0, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    .line 4515
    new-instance v0, Ljava/util/Formatter$Flags;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/Formatter$Flags;-><init>(I)V

    sput-object v0, Ljava/util/Formatter$Flags;->GROUP:Ljava/util/Formatter$Flags;

    .line 4516
    new-instance v0, Ljava/util/Formatter$Flags;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/Formatter$Flags;-><init>(I)V

    sput-object v0, Ljava/util/Formatter$Flags;->PARENTHESES:Ljava/util/Formatter$Flags;

    .line 4519
    new-instance v0, Ljava/util/Formatter$Flags;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/util/Formatter$Flags;-><init>(I)V

    sput-object v0, Ljava/util/Formatter$Flags;->PREVIOUS:Ljava/util/Formatter$Flags;

    return-void
.end method

.method private constructor greylist-max-o <init>(I)V
    .registers 2
    .param p1, "f"    # I

    .line 4521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4522
    iput p1, p0, Ljava/util/Formatter$Flags;->flags:I

    .line 4523
    return-void
.end method

.method static synthetic blacklist access$100(Ljava/util/Formatter$Flags;Ljava/util/Formatter$Flags;)Ljava/util/Formatter$Flags;
    .registers 3
    .param p0, "x0"    # Ljava/util/Formatter$Flags;
    .param p1, "x1"    # Ljava/util/Formatter$Flags;

    .line 4501
    invoke-direct {p0, p1}, Ljava/util/Formatter$Flags;->add(Ljava/util/Formatter$Flags;)Ljava/util/Formatter$Flags;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o add(Ljava/util/Formatter$Flags;)Ljava/util/Formatter$Flags;
    .registers 4
    .param p1, "f"    # Ljava/util/Formatter$Flags;

    .line 4538
    iget v0, p0, Ljava/util/Formatter$Flags;->flags:I

    invoke-virtual {p1}, Ljava/util/Formatter$Flags;->valueOf()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Ljava/util/Formatter$Flags;->flags:I

    .line 4539
    return-object p0
.end method

.method private static greylist-max-o parse(C)Ljava/util/Formatter$Flags;
    .registers 3
    .param p0, "c"    # C

    .line 4561
    const/16 v0, 0x20

    if-eq p0, v0, :cond_36

    const/16 v0, 0x23

    if-eq p0, v0, :cond_33

    const/16 v0, 0x28

    if-eq p0, v0, :cond_30

    const/16 v0, 0x30

    if-eq p0, v0, :cond_2d

    const/16 v0, 0x3c

    if-eq p0, v0, :cond_2a

    packed-switch p0, :pswitch_data_3a

    .line 4571
    new-instance v0, Ljava/util/UnknownFormatFlagsException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/UnknownFormatFlagsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4562
    :pswitch_21
    sget-object v0, Ljava/util/Formatter$Flags;->LEFT_JUSTIFY:Ljava/util/Formatter$Flags;

    return-object v0

    .line 4567
    :pswitch_24
    sget-object v0, Ljava/util/Formatter$Flags;->GROUP:Ljava/util/Formatter$Flags;

    return-object v0

    .line 4564
    :pswitch_27
    sget-object v0, Ljava/util/Formatter$Flags;->PLUS:Ljava/util/Formatter$Flags;

    return-object v0

    .line 4569
    :cond_2a
    sget-object v0, Ljava/util/Formatter$Flags;->PREVIOUS:Ljava/util/Formatter$Flags;

    return-object v0

    .line 4566
    :cond_2d
    sget-object v0, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    return-object v0

    .line 4568
    :cond_30
    sget-object v0, Ljava/util/Formatter$Flags;->PARENTHESES:Ljava/util/Formatter$Flags;

    return-object v0

    .line 4563
    :cond_33
    sget-object v0, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    return-object v0

    .line 4565
    :cond_36
    sget-object v0, Ljava/util/Formatter$Flags;->LEADING_SPACE:Ljava/util/Formatter$Flags;

    return-object v0

    nop

    :pswitch_data_3a
    .packed-switch 0x2b
        :pswitch_27
        :pswitch_24
        :pswitch_21
    .end packed-switch
.end method

.method public static greylist-max-o parse(Ljava/lang/String;)Ljava/util/Formatter$Flags;
    .registers 7
    .param p0, "s"    # Ljava/lang/String;

    .line 4548
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 4549
    .local v0, "ca":[C
    new-instance v1, Ljava/util/Formatter$Flags;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/Formatter$Flags;-><init>(I)V

    .line 4550
    .local v1, "f":Ljava/util/Formatter$Flags;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    array-length v3, v0

    if-ge v2, v3, :cond_2a

    .line 4551
    aget-char v3, v0, v2

    invoke-static {v3}, Ljava/util/Formatter$Flags;->parse(C)Ljava/util/Formatter$Flags;

    move-result-object v3

    .line 4552
    .local v3, "v":Ljava/util/Formatter$Flags;
    invoke-virtual {v1, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v4

    if-nez v4, :cond_20

    .line 4554
    invoke-direct {v1, v3}, Ljava/util/Formatter$Flags;->add(Ljava/util/Formatter$Flags;)Ljava/util/Formatter$Flags;

    .line 4550
    .end local v3    # "v":Ljava/util/Formatter$Flags;
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 4553
    .restart local v3    # "v":Ljava/util/Formatter$Flags;
    :cond_20
    new-instance v4, Ljava/util/DuplicateFormatFlagsException;

    invoke-virtual {v3}, Ljava/util/Formatter$Flags;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/DuplicateFormatFlagsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 4556
    .end local v2    # "i":I
    .end local v3    # "v":Ljava/util/Formatter$Flags;
    :cond_2a
    return-object v1
.end method

.method public static greylist-max-o toString(Ljava/util/Formatter$Flags;)Ljava/lang/String;
    .registers 2
    .param p0, "f"    # Ljava/util/Formatter$Flags;

    .line 4577
    invoke-virtual {p0}, Ljava/util/Formatter$Flags;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public greylist-max-o contains(Ljava/util/Formatter$Flags;)Z
    .registers 4
    .param p1, "f"    # Ljava/util/Formatter$Flags;

    .line 4530
    iget v0, p0, Ljava/util/Formatter$Flags;->flags:I

    invoke-virtual {p1}, Ljava/util/Formatter$Flags;->valueOf()I

    move-result v1

    and-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/util/Formatter$Flags;->valueOf()I

    move-result v1

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public greylist-max-o dup()Ljava/util/Formatter$Flags;
    .registers 3

    .line 4534
    new-instance v0, Ljava/util/Formatter$Flags;

    iget v1, p0, Ljava/util/Formatter$Flags;->flags:I

    invoke-direct {v0, v1}, Ljava/util/Formatter$Flags;-><init>(I)V

    return-object v0
.end method

.method public greylist-max-o remove(Ljava/util/Formatter$Flags;)Ljava/util/Formatter$Flags;
    .registers 4
    .param p1, "f"    # Ljava/util/Formatter$Flags;

    .line 4543
    iget v0, p0, Ljava/util/Formatter$Flags;->flags:I

    invoke-virtual {p1}, Ljava/util/Formatter$Flags;->valueOf()I

    move-result v1

    not-int v1, v1

    and-int/2addr v0, v1

    iput v0, p0, Ljava/util/Formatter$Flags;->flags:I

    .line 4544
    return-object p0
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 3

    .line 4581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4582
    .local v0, "sb":Ljava/lang/StringBuilder;
    sget-object v1, Ljava/util/Formatter$Flags;->LEFT_JUSTIFY:Ljava/util/Formatter$Flags;

    invoke-virtual {p0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4583
    :cond_12
    sget-object v1, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    invoke-virtual {p0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v1

    if-eqz v1, :cond_1f

    const/16 v1, 0x5e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4584
    :cond_1f
    sget-object v1, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    invoke-virtual {p0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v1

    if-eqz v1, :cond_2c

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4585
    :cond_2c
    sget-object v1, Ljava/util/Formatter$Flags;->PLUS:Ljava/util/Formatter$Flags;

    invoke-virtual {p0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v1

    if-eqz v1, :cond_39

    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4586
    :cond_39
    sget-object v1, Ljava/util/Formatter$Flags;->LEADING_SPACE:Ljava/util/Formatter$Flags;

    invoke-virtual {p0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v1

    if-eqz v1, :cond_46

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4587
    :cond_46
    sget-object v1, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    invoke-virtual {p0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v1

    if-eqz v1, :cond_53

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4588
    :cond_53
    sget-object v1, Ljava/util/Formatter$Flags;->GROUP:Ljava/util/Formatter$Flags;

    invoke-virtual {p0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v1

    if-eqz v1, :cond_60

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4589
    :cond_60
    sget-object v1, Ljava/util/Formatter$Flags;->PARENTHESES:Ljava/util/Formatter$Flags;

    invoke-virtual {p0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v1

    if-eqz v1, :cond_6d

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4590
    :cond_6d
    sget-object v1, Ljava/util/Formatter$Flags;->PREVIOUS:Ljava/util/Formatter$Flags;

    invoke-virtual {p0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v1

    if-eqz v1, :cond_7a

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4591
    :cond_7a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o valueOf()I
    .registers 2

    .line 4526
    iget v0, p0, Ljava/util/Formatter$Flags;->flags:I

    return v0
.end method
