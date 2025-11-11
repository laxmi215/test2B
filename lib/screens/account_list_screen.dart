import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
import '../models/account.dart';
import 'transaction_details_screen.dart';

class AccountListScreen extends StatefulWidget {
  const AccountListScreen({Key? key}) : super(key: key);

  @override
  State<AccountListScreen> createState() => _AccountListScreenState();
}

class _AccountListScreenState extends State<AccountListScreen> {
  List<Account> accounts = [];
  bool isLoading = true;
  bool _isMenuOpen = false;

  @override
  void initState() {
    super.initState();
    loadAccounts();
  }

  Future<void> loadAccounts() async {
    try {
      final String response =
          await rootBundle.loadString('assets/accounts.json');
      final data = json.decode(response);
      final accountsData = AccountsData.fromJson(data);

      setState(() {
        accounts = accountsData.accounts;
        isLoading = false;
      });
    } catch (e) {
      print('Error loading accounts: $e');
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Accounts',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        backgroundColor: Color(0xFF1E3A8A),
        foregroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        actions: [
          // Hamburger Menu Button
          IconButton(
            icon: Icon(_isMenuOpen ? Icons.close : Icons.menu),
            onPressed: () {
              setState(() {
                _isMenuOpen = !_isMenuOpen;
              });
            },
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF1E3A8A),
              Color(0xFFF3F4F6),
            ],
            stops: [0.0, 0.3],
          ),
        ),
        child: isLoading
            ? Center(
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                ),
              )
            : accounts.isEmpty
                ? Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.account_balance_wallet,
                          size: 80,
                          color: Colors.grey,
                        ),
                        SizedBox(height: 16),
                        Text(
                          'No accounts found',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                  )
                : Column(
                    children: [
                      // Hamburger Menu Dropdown
                      if (_isMenuOpen)
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0xFF1E3A8A),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                blurRadius: 10,
                                offset: Offset(0, 4),
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              _buildMenuOption(
                                icon: Icons.swap_horiz,
                                label: 'Transfer Between Accounts',
                                onTap: () {
                                  setState(() => _isMenuOpen = false);
                                  _showComingSoonDialog(
                                      context, 'Transfer Between Accounts');
                                },
                              ),
                              Divider(
                                color: Colors.white.withOpacity(0.2),
                                height: 1,
                              ),
                              _buildMenuOption(
                                icon: Icons.send,
                                label: 'Send Money',
                                onTap: () {
                                  setState(() => _isMenuOpen = false);
                                  _showComingSoonDialog(context, 'Send Money');
                                },
                              ),
                              Divider(
                                color: Colors.white.withOpacity(0.2),
                                height: 1,
                              ),
                              _buildMenuOption(
                                icon: Icons.settings,
                                label: 'Manage Accounts',
                                onTap: () {
                                  setState(() => _isMenuOpen = false);
                                  _showComingSoonDialog(
                                      context, 'Manage Accounts');
                                },
                              ),
                              Divider(
                                color: Colors.white.withOpacity(0.2),
                                height: 1,
                              ),
                              _buildMenuOption(
                                icon: Icons.more_horiz,
                                label: 'More Options',
                                onTap: () {
                                  setState(() => _isMenuOpen = false);
                                  _showComingSoonDialog(
                                      context, 'More Options');
                                },
                              ),
                            ],
                          ),
                        ),
                      SizedBox(height: 8),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Accounts',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      // Accounts List
                      Expanded(
                        child: ListView.builder(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          itemCount: accounts.length,
                          itemBuilder: (context, index) {
                            final account = accounts[index];
                            return _buildAccountCard(account, index);
                          },
                        ),
                      ),
                    ],
                  ),
      ),
    );
  }

  Widget _buildMenuOption({
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.white,
              size: 24,
            ),
            SizedBox(width: 16),
            Text(
              label,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showComingSoonDialog(BuildContext context, String feature) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          title: Row(
            children: [
              Icon(Icons.info_outline, color: Color(0xFF3B82F6)),
              SizedBox(width: 12),
              Text('Coming Soon'),
            ],
          ),
          content: Text(
            '$feature feature will be available soon!',
            style: TextStyle(fontSize: 16),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text(
                'OK',
                style: TextStyle(
                  color: Color(0xFF3B82F6),
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildAccountCard(Account account, int index) {
    final IconData accountIcon = account.type == 'Chequing'
        ? Icons.account_balance_wallet
        : Icons.savings;

    final Color cardColor =
        account.type == 'Chequing' ? Color(0xFF3B82F6) : Color(0xFF10B981);

    // Only the first account (Chequing) will be active
    final bool isActive = index == 0;

    return _HoverableAccountCard(
      account: account,
      accountIcon: accountIcon,
      cardColor: cardColor,
      isActive: isActive,
    );
  }
}

class _HoverableAccountCard extends StatefulWidget {
  final Account account;
  final IconData accountIcon;
  final Color cardColor;
  final bool isActive;

  const _HoverableAccountCard({
    required this.account,
    required this.accountIcon,
    required this.cardColor,
    required this.isActive,
  });

  @override
  State<_HoverableAccountCard> createState() => _HoverableAccountCardState();
}

class _HoverableAccountCardState extends State<_HoverableAccountCard> {
  bool _isHovered = false;
  bool _isButtonHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        margin: EdgeInsets.only(bottom: 16),
        transform: Matrix4.identity()..scale(_isHovered ? 1.02 : 1.0),
        child: Card(
          elevation: _isHovered ? 16 : 8,
          shadowColor: Colors.black.withOpacity(_isHovered ? 0.4 : 0.2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: _isHovered
                    ? [
                        widget.cardColor.withOpacity(0.95),
                        widget.cardColor.withOpacity(0.85),
                      ]
                    : [
                        widget.cardColor,
                        widget.cardColor.withOpacity(0.8),
                      ],
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.white
                                  .withOpacity(_isHovered ? 0.3 : 0.2),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Icon(
                              widget.accountIcon,
                              color: Colors.white,
                              size: 28,
                            ),
                          ),
                          SizedBox(width: 12),
                          Text(
                            widget.account.type,
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      if (widget.isActive)
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                          decoration: BoxDecoration(
                            color: Colors.white
                                .withOpacity(_isHovered ? 0.4 : 0.3),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            'ACTIVE',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                    ],
                  ),
                  SizedBox(height: 24),
                  Text(
                    'Account Number',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white.withOpacity(0.8),
                      letterSpacing: 0.5,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    widget.account.accountNumber,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      letterSpacing: 1.2,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Available Balance',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white.withOpacity(0.8),
                      letterSpacing: 0.5,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    '\$${widget.account.balance.toStringAsFixed(2)}',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 20),
                  MouseRegion(
                    onEnter: (_) => setState(() => _isButtonHovered = true),
                    onExit: (_) => setState(() => _isButtonHovered = false),
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 200),
                      transform: Matrix4.identity()
                        ..scale(_isButtonHovered ? 1.05 : 1.0),
                      child: SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: widget.isActive
                              ? () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          TransactionDetailsScreen(
                                        accountType: widget.account.type,
                                      ),
                                    ),
                                  );
                                }
                              : null,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: widget.isActive
                                ? (_isButtonHovered
                                    ? widget.cardColor.withOpacity(0.1)
                                    : Colors.white)
                                : Colors.grey[400],
                            foregroundColor: widget.isActive
                                ? widget.cardColor
                                : Colors.grey[600],
                            padding: EdgeInsets.symmetric(vertical: 14),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            elevation: widget.isActive
                                ? (_isButtonHovered ? 8 : 4)
                                : 0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                widget.isActive
                                    ? 'View Transactions'
                                    : 'Unavailable',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              if (widget.isActive) ...[
                                SizedBox(width: 8),
                                Icon(Icons.arrow_forward, size: 18),
                              ],
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
