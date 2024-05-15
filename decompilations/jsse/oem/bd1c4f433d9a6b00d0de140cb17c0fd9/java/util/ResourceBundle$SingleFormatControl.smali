.class Ljava/util/ResourceBundle$SingleFormatControl;
.super Ljava/util/ResourceBundle$Control;
.source "ResourceBundle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ResourceBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleFormatControl"
.end annotation


# static fields
.field private static final CLASS_ONLY:Ljava/util/ResourceBundle$Control;

.field private static final PROPERTIES_ONLY:Ljava/util/ResourceBundle$Control;


# instance fields
.field private final formats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Ljava/util/ResourceBundle$Control;
    .registers 1

    sget-object v0, Ljava/util/ResourceBundle$SingleFormatControl;->CLASS_ONLY:Ljava/util/ResourceBundle$Control;

    return-object v0
.end method

.method static synthetic -get1()Ljava/util/ResourceBundle$Control;
    .registers 1

    sget-object v0, Ljava/util/ResourceBundle$SingleFormatControl;->PROPERTIES_ONLY:Ljava/util/ResourceBundle$Control;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 2959
    new-instance v0, Ljava/util/ResourceBundle$SingleFormatControl;

    sget-object v1, Ljava/util/ResourceBundle$SingleFormatControl;->FORMAT_PROPERTIES:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ResourceBundle$SingleFormatControl;-><init>(Ljava/util/List;)V

    .line 2958
    sput-object v0, Ljava/util/ResourceBundle$SingleFormatControl;->PROPERTIES_ONLY:Ljava/util/ResourceBundle$Control;

    .line 2962
    new-instance v0, Ljava/util/ResourceBundle$SingleFormatControl;

    sget-object v1, Ljava/util/ResourceBundle$SingleFormatControl;->FORMAT_CLASS:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ResourceBundle$SingleFormatControl;-><init>(Ljava/util/List;)V

    .line 2961
    sput-object v0, Ljava/util/ResourceBundle$SingleFormatControl;->CLASS_ONLY:Ljava/util/ResourceBundle$Control;

    .line 2957
    return-void
.end method

.method protected constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2966
    .local p1, "formats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/util/ResourceBundle$Control;-><init>()V

    .line 2967
    iput-object p1, p0, Ljava/util/ResourceBundle$SingleFormatControl;->formats:Ljava/util/List;

    .line 2968
    return-void
.end method


# virtual methods
.method public getFormats(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p1, "baseName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2971
    if-nez p1, :cond_8

    .line 2972
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2974
    :cond_8
    iget-object v0, p0, Ljava/util/ResourceBundle$SingleFormatControl;->formats:Ljava/util/List;

    return-object v0
.end method
