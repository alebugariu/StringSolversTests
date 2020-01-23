(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.++ (str.substr tmp_str0 tmp_int1 tmp_int1) (int.to.str tmp_int1)) (str.at tmp_str0 tmp_int1)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: not_implemented
;I0818 17:37:29.905948  3369 UnaryAutomaton.cpp:325] 1
;I0818 17:37:29.905995  3369 UnaryAutomaton.cpp:326] 1
;I0818 17:37:29.906005  3369 UnaryAutomaton.cpp:327] 1
;F0818 17:37:29.985647  3369 VariableValueComputer.cpp:1422] handle case
;*** Check failure stack trace: ***
;    @     0x7f648c245f5d  google::LogMessage::Fail()
;    @     0x7f648c248513  google::LogMessage::SendToLog()
;    @     0x7f648c245aeb  google::LogMessage::Flush()
;    @     0x7f648c24745e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f648c869a26  Vlab::Solver::VariableValueComputer::visitQualIdentifier()
;    @     0x7f648c8b7992  Vlab::SMT::QualIdentifier::accept()
;    @     0x7f648c7b69ad  Vlab::SMT::Visitor::visit()
;    @     0x7f648c868762  Vlab::Solver::VariableValueComputer::visitToString()
;    @     0x7f648c8b4df0  Vlab::SMT::ToString::accept()
;    @     0x7f648c7b69ad  Vlab::SMT::Visitor::visit()
;    @     0x7f648c8652cd  Vlab::Solver::VariableValueComputer::visitConcat()
;    @     0x7f648c8b176c  Vlab::SMT::Concat::accept()
;    @     0x7f648c7b69ad  Vlab::SMT::Visitor::visit()
;    @     0x7f648c8637f6  Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f648c8b0450  Vlab::SMT::Eq::accept()
;    @     0x7f648c7b69ad  Vlab::SMT::Visitor::visit()
;    @     0x7f648c861878  Vlab::Solver::VariableValueComputer::start()
;    @     0x7f648c8a25ef  Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f648c89996e  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f648c8aeb5c  Vlab::SMT::And::accept()
;    @     0x7f648c7b69ad  Vlab::SMT::Visitor::visit()
;    @     0x7f648c8a2a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f648c898d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f648c8acd2a  Vlab::SMT::Assert::accept()
;    @     0x7f648c7b69ad  Vlab::SMT::Visitor::visit()
;    @     0x7f648c8bb699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f648c8ac067  Vlab::SMT::Script::visit_children()
;    @     0x7f648c7b69e0  Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f648c898b35  Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f648c8ac03c  Vlab::SMT::Script::accept()
;    @     0x7f648c7b69ad  Vlab::SMT::Visitor::visit()
;    @     0x7f648c8987bb  Vlab::Solver::ConstraintSolver::start()
