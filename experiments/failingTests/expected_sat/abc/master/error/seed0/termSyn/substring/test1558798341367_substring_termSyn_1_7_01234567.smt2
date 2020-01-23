(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.substr (str.at tmp_str0 tmp_int1) (str.indexof tmp_str0 tmp_str0 tmp_int1) (str.len tmp_str0)) (int.to.str tmp_int1)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: not_implemented
;I0818 17:36:40.700843  2942 UnaryAutomaton.cpp:325] 1
;I0818 17:36:40.700896  2942 UnaryAutomaton.cpp:326] 1
;I0818 17:36:40.700904  2942 UnaryAutomaton.cpp:327] 1
;F0818 17:36:40.706141  2942 VariableValueComputer.cpp:1422] handle case
;*** Check failure stack trace: ***
;    @     0x7f929ed73f5d  google::LogMessage::Fail()
;    @     0x7f929ed76513  google::LogMessage::SendToLog()
;    @     0x7f929ed73aeb  google::LogMessage::Flush()
;    @     0x7f929ed7545e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f929f397a26  Vlab::Solver::VariableValueComputer::visitQualIdentifier()
;    @     0x7f929f3e5992  Vlab::SMT::QualIdentifier::accept()
;    @     0x7f929f2e49ad  Vlab::SMT::Visitor::visit()
;    @     0x7f929f396762  Vlab::Solver::VariableValueComputer::visitToString()
;    @     0x7f929f3e2df0  Vlab::SMT::ToString::accept()
;    @     0x7f929f2e49ad  Vlab::SMT::Visitor::visit()
;    @     0x7f929f3917f6  Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f929f3de450  Vlab::SMT::Eq::accept()
;    @     0x7f929f2e49ad  Vlab::SMT::Visitor::visit()
;    @     0x7f929f38f878  Vlab::Solver::VariableValueComputer::start()
;    @     0x7f929f3d05ef  Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f929f3c796e  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f929f3dcb5c  Vlab::SMT::And::accept()
;    @     0x7f929f2e49ad  Vlab::SMT::Visitor::visit()
;    @     0x7f929f3d0a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f929f3c6d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f929f3dad2a  Vlab::SMT::Assert::accept()
;    @     0x7f929f2e49ad  Vlab::SMT::Visitor::visit()
;    @     0x7f929f3e9699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f929f3da067  Vlab::SMT::Script::visit_children()
;    @     0x7f929f2e49e0  Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f929f3c6b35  Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f929f3da03c  Vlab::SMT::Script::accept()
;    @     0x7f929f2e49ad  Vlab::SMT::Visitor::visit()
;    @     0x7f929f3c67bb  Vlab::Solver::ConstraintSolver::start()
;    @     0x7f929f2cab84  Vlab::Driver::Solve()
;    @           0x410110  main
;    @     0x7f929e426830  __libc_start_main
