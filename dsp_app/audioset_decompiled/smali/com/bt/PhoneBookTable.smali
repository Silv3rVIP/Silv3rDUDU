.class public Lcom/bt/PhoneBookTable;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.nwd.bt.provider"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "_ID DESC"

.field public static final PHONEBOOK_MAC:Ljava/lang/String; = "phonebook_mac"

.field public static final PHONEBOOK_NAME:Ljava/lang/String; = "phonebook_name"

.field public static final PHONEBOOK_NUMBER:Ljava/lang/String; = "phonebook_number"

.field public static final PHONEBOOK_URI:Landroid/net/Uri;

.field protected static final TABLE_NAME:Ljava/lang/String; = "phonebook"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.nwd.bt.provider/phonebook"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/bt/PhoneBookTable;->PHONEBOOK_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
